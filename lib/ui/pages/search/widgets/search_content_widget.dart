import 'package:flutter/material.dart';
import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:flutter_application/ui/pages/place_detail/place_detail_page.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_loading_widget.dart';

import 'search_place_widget.dart';

class SearchContentWidget extends StatefulWidget {
  static const routeName = 'SearchContentWidget';

  final Map<String, PlaceModel> placeMap;
  final bool inSideLoading;

  const SearchContentWidget(
      {Key? key, required this.placeMap, required this.inSideLoading})
      : super(key: key);

  @override
  _SearchContentWidgetState createState() => _SearchContentWidgetState();
}

class _SearchContentWidgetState extends State<SearchContentWidget>
    with SingleTickerProviderStateMixin {
  static const TAG = 'SearchContentWidget';

  late final AnimationController animationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1500));

  late final Animation<Offset> offset =
      Tween<Offset>(begin: const Offset(0, 1.0), end: Offset.zero).animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeIn));

  @override
  void initState() {
    super.initState();
    repeatOnce();
  }

  void repeatOnce() async {
    await animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
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
              child: GridView.builder(
                itemCount: widget.placeMap.values.length,
                padding: const EdgeInsets.symmetric(horizontal: 20)
                    .copyWith(bottom: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 161 / 198,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 14),
                itemBuilder: (context, index) {
                  return SearchPlaceWidget(
                    placeModel: widget.placeMap.values.toList()[index],
                    onTap: () {
                      Navigator.pushNamed(context, PlaceDetailPage.routeName,
                          arguments: widget.placeMap.values.toList()[index]);
                    },
                  );
                },
              ),
            ),
          ),
          if (widget.inSideLoading)
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
