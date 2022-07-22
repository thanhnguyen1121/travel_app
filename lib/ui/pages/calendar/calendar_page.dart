import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/blocs/calendar/calendar_bloc.dart';
import 'package:flutter_application/ui/blocs/calendar/calendar_state.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_error_widget.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/header_content_calender_widget.dart';
import 'widgets/header_weekly_calender_widget.dart';
import 'widgets/place_calendar_widget.dart';

class CalendarPage extends StatefulWidget {
  static const routeName = 'CalendarPage';

  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage>
    with AutomaticKeepAliveClientMixin {
  static const TAG = 'CalendarPage';

  @override
  initState() {
    super.initState();
    context.read<CalendarBloc>().init();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        title: Text(
          S.current.schedule,
          style: context.textTheme.bodyText1?.copyWith(fontSize: 18),
        ),
        backgroundColor: context.theme.backgroundColor,
        elevation: 0,
        centerTitle: true,
        actions: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: context.colorScheme.primaryContainer,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Assets.icons.icNotication.svg(width: 24, height: 24),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: BlocBuilder<CalendarBloc, CalendarState>(
        builder: (context, state) {
          return state.when(
            (placeMap) {
              return buildContent(placeMap: placeMap);
            },
            loading: () => const AppLoadingWidget(),
            error: (error) => AppErrorWidget(
              message: error.toString(),
            ),
          );
        },
      ),
    );
  }

  Widget buildContent({required Map<String, PlaceModel> placeMap}) {
    return SafeArea(
      child: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, value) {
          return [
            SliverPersistentHeader(
              delegate: HeaderWeeklyCalenderWidget(),
              floating: true,
              pinned: false,
            ),
            SliverPersistentHeader(
              delegate: HeaderContentCalenderWidget(),
              floating: false,
              pinned: true,
            )
          ];
        },
        body: ListView.separated(
            padding:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
            itemBuilder: (context, index) {
              return PlaceCalendarWidget(
                placeModel: placeMap.values.toList()[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 12,
              );
            },
            itemCount: placeMap.values.length),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
