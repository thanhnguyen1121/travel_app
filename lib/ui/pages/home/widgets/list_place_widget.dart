import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/blocs/home/home_bloc.dart';
import 'package:flutter_application/ui/blocs/home/home_state.dart';
import 'package:flutter_application/ui/pages/home/place_detail/place_detail_page.dart';
import 'package:flutter_application/ui/pages/home/widgets/place_card_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPlaceWidget extends StatefulWidget {
  const ListPlaceWidget({Key? key}) : super(key: key);

  @override
  _ListPlaceWidgetState createState() => _ListPlaceWidgetState();
}

class _ListPlaceWidgetState extends State<ListPlaceWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1500),
    vsync: this,
  )..repeat(reverse: false);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(1.5, 0.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOut,
  ));

  @override
  void initState() {
    super.initState();
    repeatOnce();
  }

  void repeatOnce() async {
    await _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.current.best_destination,
                  style: context.textTheme.bodyText1
                      ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  S.current.view_all,
                  style: context.textTheme.subtitle2?.copyWith(
                      color: AppColors.h0D6EFD, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 384,
            child: BlocSelector<HomeBloc, HomeState, Map<String, PlaceModel>>(
                selector: (state) {
              return state.maybeWhen((placeState) => placeState,
                  orElse: () => {});
            }, builder: (context, data) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => PlaceCardWidget(
                  placeModel: data.values.toList()[index],
                  onTab: () {
                    Navigator.of(context, rootNavigator: false).pushNamed(
                      PlaceDetailPage.routeName,
                      arguments: data.values.toList()[index],
                    );
                  },
                ),
                itemCount: data.values.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 12,
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
