import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/constants/app_enum.dart';
import 'package:flutter_application/domain/entity/message_model.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/blocs/message_detail_bloc/message_detail_bloc.dart';
import 'package:flutter_application/ui/blocs/message_detail_bloc/message_detail_state.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_error_widget.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_loading_widget.dart';
import 'package:flutter_application/ui/widgets/design_system/search_text_form_field.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/message_form_me_widget.dart';
import 'widgets/message_form_partner_widget.dart';

class MessageDetailPage extends StatefulWidget {
  static const routeName = 'MessageDetailPage';

  const MessageDetailPage({Key? key}) : super(key: key);

  @override
  _MessageDetailPageState createState() => _MessageDetailPageState();
}

class _MessageDetailPageState extends State<MessageDetailPage> {
  static const TAG = 'MessageDetailPage';
  final MessageDetailBloc messageDetailBloc = MessageDetailBloc();

  @override
  void initState() {
    super.initState();
    messageDetailBloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: context.theme.backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                width: 44,
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: context.colorScheme.primary),
                child: Assets.icons.icBack
                    .svg(color: context.colorScheme.secondary),
              ),
            ),
            Column(
              children: [
                Text(
                  "Details",
                  style: context.textTheme.bodyText1?.copyWith(fontSize: 18),
                ),
                Text(
                  "Active now",
                  style: context.textTheme.bodyText2
                      ?.copyWith(color: AppColors.h19B000),
                )
              ],
            ),
            Container(
              width: 44,
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: context.colorScheme.primary),
              child: Assets.icons.icCall.svg(
                  width: 24, height: 24, color: context.colorScheme.secondary),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: BlocProvider.value(
          value: messageDetailBloc,
          child: BlocBuilder<MessageDetailBloc, MessageDetailState>(
            builder: (context, state) {
              return state.when(
                (messageList) => buildContent(messageList),
                loading: () => const AppLoadingWidget(),
                error: (error) => AppErrorWidget(
                  message: error.toString(),
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20)
            .copyWith(bottom: 32, top: 16),
        child: Row(
          children: [
            Expanded(
              child: SearchTextFormField(
                suffixIcon: Assets.icons.icOpenFile.svg(width: 24, height: 24),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              height: 48,
              width: 48,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.h0D6EFD),
              child: Assets.icons.icMicrophone
                  .svg(width: 24, height: 24, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget buildContent(Map<String, List<MessageModel>> messageMap) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: context.colorScheme.primary,
        ),
        Expanded(
          child: ListView.builder(
            reverse: true,
            padding: const EdgeInsets.symmetric(vertical: 12),
            itemCount: messageMap.length,
            itemBuilder: (context, index) {
              if (messageMap.values.toList()[index].first.messageType ==
                  MessageType.formMe) {
                return MessageFormMeWidget(
                    messageModels: messageMap.values.toList()[index]);
              } else {
                return MessageFormPartnerWidget(
                    messageModels: messageMap.values.toList()[index]);
              }
            },
          ),
        ),
      ],
    );
  }
}
