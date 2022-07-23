import 'package:flutter/material.dart';
import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:flutter_application/ui/pages/place_detail/place_detail_page.dart';

import '../../../widgets/app_widgets/app_loading_widget.dart';
import 'place_calendar_widget.dart';

class BodyContentCalendarWidget extends StatefulWidget {
  final Map<String, PlaceModel> placeMap;
  final bool insideLoading;

  const BodyContentCalendarWidget(
      {Key? key, required this.placeMap, required this.insideLoading})
      : super(key: key);

  @override
  _BodyContentCalendarWidgetState createState() =>
      _BodyContentCalendarWidgetState();
}

class _BodyContentCalendarWidgetState extends State<BodyContentCalendarWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 1));

  late final Animation<Offset> offset =
      Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeIn));

  @override
  initState() {
    super.initState();
    repeatOne();
  }

  @override
  void dispose() {
    animationController.forward();
    super.dispose();
  }

  Future<void> repeatOne() async {
    await animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offset,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20)
                      .copyWith(bottom: 20),
                  itemBuilder: (context, index) {
                    return PlaceCalendarWidget(
                      placeModel: widget.placeMap.values.toList()[index],
                      onTap: () {
                        Navigator.pushNamed(context, PlaceDetailPage.routeName,
                            arguments: widget.placeMap.values.toList()[index]);
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 12,
                    );
                  },
                  itemCount: widget.placeMap.values.length),
            ),
          ),
          if (widget.insideLoading)
            const Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: AppLoadingWidget(),
              ),
            )
        ],
      ),
    );
  }
}
