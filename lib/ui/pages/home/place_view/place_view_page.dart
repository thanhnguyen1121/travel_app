import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:tuple/tuple.dart';

class PlaceViewPage extends StatefulWidget {
  static const routeName = 'PlaceViewPage';
  final Tuple2<List<String>, int> data;

  const PlaceViewPage({Key? key, required this.data}) : super(key: key);

  @override
  _PlaceViewPageState createState() => _PlaceViewPageState();
}

class _PlaceViewPageState extends State<PlaceViewPage> {
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.data.item2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: PageView.builder(
                  controller: pageController,
                  itemCount: widget.data.item1.length,
                  physics: const ClampingScrollPhysics(),
                  reverse: false,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      widget.data.item1[index],
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    );
                  }),
            ),
          ),
          Positioned.fill(
            top: 64,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 44,
                child: Text(
                  "View",
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyText1?.copyWith(fontSize: 18),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 64,
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colorScheme.primary),
                    child: Assets.icons.icBack
                        .svg(color: context.colorScheme.secondary),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
