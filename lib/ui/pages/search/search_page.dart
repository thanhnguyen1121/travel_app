import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/blocs/search/search_bloc.dart';
import 'package:flutter_application/ui/blocs/search/search_state.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_error_widget.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_loading_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/header_search_content_widget.dart';
import 'widgets/header_search_widget.dart';
import 'widgets/search_content_widget.dart';

class SearchPage extends StatefulWidget {
  static const routeName = 'SearchPage';

  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin {
  static const TAG = 'SearchPage';
  final TextEditingController searchTextController = TextEditingController();
  Timer debounce = Timer(const Duration(milliseconds: 800), () {});

  @override
  void initState() {
    super.initState();
    context.read<SearchBloc>().init();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        appBar: AppBar(
          title: Text(
            S.current.search,
            style: context.textTheme.bodyText1?.copyWith(fontSize: 18),
          ),
          backgroundColor: context.theme.backgroundColor,
          elevation: 0,
          centerTitle: true,
          actions: [
            InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              onTap: () {
                if (searchTextController.text.isNotEmpty) {
                  searchTextController.clear();
                  context.read<SearchBloc>().searchWithKeyWord(keyWord: "");
                  FocusManager.instance.primaryFocus?.unfocus();
                }
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  S.current.cancel,
                  style: context.textTheme.bodyText1
                      ?.copyWith(color: AppColors.h0D6EFD),
                ),
              ),
            ),
          ],
        ),
        body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return state.when(
              (placeMap, inSideLoading) {
                return buildContent(
                    placeMap: placeMap, inSideLoading: inSideLoading);
              },
              loading: () => const AppLoadingWidget(),
              error: (error) => AppErrorWidget(message: error),
            );
          },
        ),
      ),
    );
  }

  Widget buildContent({
    required Map<String, PlaceModel> placeMap,
    required bool inSideLoading,
  }) {
    return SafeArea(
      child: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, value) {
          return [
            SliverPersistentHeader(
              delegate: HeaderSearchWidget(
                  searchTextController: searchTextController,
                  debounce: debounce,
                  onValueChange: (value) {
                    context
                        .read<SearchBloc>()
                        .searchWithKeyWord(keyWord: value);
                  }),
              pinned: false,
              floating: true,
            ),
            SliverPersistentHeader(
              delegate: HeaderSearchContentWidget(),
              pinned: true,
              floating: true,
            ),
          ];
        },
        body: SearchContentWidget(
            placeMap: placeMap, inSideLoading: inSideLoading),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
