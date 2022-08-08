import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/blocs/message/message_bloc.dart';
import 'package:flutter_application/ui/blocs/message/message_state.dart';
import 'package:flutter_application/ui/pages/messages/message_detail/message_detail_page.dart';
import 'package:flutter_application/ui/pages/messages/widgets/message_search_header_widget.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_error_widget.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_loading_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/user_message_model.dart';
import 'widgets/message_item_widget.dart';
import 'widgets/message_title_header_widget.dart';

class MessagePage extends StatefulWidget {
  static const routeName = 'MessagePage';

  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage>
    with AutomaticKeepAliveClientMixin {
  static const TAG = 'MessagePage';

  @override
  void initState() {
    super.initState();
    context.read<MessageBloc>().init();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        appBar: AppBar(
          title: Text(
            S.current.message,
            style: context.textTheme.bodyText1?.copyWith(fontSize: 18),
          ),
          backgroundColor: context.theme.backgroundColor,
          elevation: 0,
          centerTitle: true,
          actions: [
            Container(
              width: 44,
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: context.colorScheme.primary),
              child: Assets.icons.icMenuHorizontal.svg(width: 24, height: 24),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, value) {
            return [
              SliverPersistentHeader(
                delegate: MessageTitleHeaderWidget(),
                floating: true,
                pinned: true,
              ),
              SliverPersistentHeader(
                delegate: MessageSearchHeaderWidget(),
                pinned: false,
                floating: true,
              ),
            ];
          },
          body: SafeArea(
            child: BlocBuilder<MessageBloc, MessageState>(
              builder: (context, state) {
                return state.when(
                  (messageList) => buildContent(messageList),
                  loading: () => const AppLoadingWidget(),
                  error: (error) => AppErrorWidget(message: error),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContent(Map<String, UserMessageModel> messageMap) {
    return ListView.builder(
      itemCount: messageMap.values.length,
      padding: const EdgeInsets.symmetric(vertical: 24),
      itemBuilder: (context, index) {
        return MessageItemWidget(
          model: messageMap.values.toList()[index],
          onClickItem: (userId) {
            Navigator.pushNamed(context, MessageDetailPage.routeName);
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
