import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/data/dto/place_dto.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/blocs/theme/theme_bloc.dart';
import 'package:flutter_application/ui/pages/place_view/place_view_page.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';
import 'package:tuple/tuple.dart';

import 'place_preview_widget.dart';

class InfoWidget extends StatefulWidget {
  final PlaceDto placeDto;

  const InfoWidget({Key? key, required this.placeDto}) : super(key: key);

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  )..repeat(reverse: false);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0, 1.0),
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
      child: Container(
        decoration: BoxDecoration(
          color: context.colorScheme.primary,
          borderRadius: const BorderRadius.vertical(
            top: Radius.elliptical(
              100,
              40,
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: context.colorScheme.secondary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.placeDto.placeTitle ?? S.current.no_data,
                                maxLines: 2,
                                overflow: TextOverflow.visible,
                                style: context.textTheme.headline6?.copyWith(),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      widget.placeDto.placeLocation ??
                                          S.current.no_data,
                                      maxLines: 1,
                                      style: context.textTheme.bodyText2
                                          ?.copyWith(fontSize: 15),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Assets.images.imgUserOne
                              .image(width: 48, height: 48),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Assets.icons.icLocation
                                  .svg(width: 12, height: 12),
                              const SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Text(
                                  widget.placeDto.placeLocation ??
                                      S.current.no_data,
                                  maxLines: 1,
                                  overflow: TextOverflow.visible,
                                  style: context.textTheme.bodyText2
                                      ?.copyWith(fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Assets.icons.icStar.svg(width: 12, height: 12),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                (widget.placeDto.placeStar ?? 0)
                                    .toStringAsFixed(1),
                                maxLines: 1,
                                overflow: TextOverflow.visible,
                                style: context.textTheme.bodyText1
                                    ?.copyWith(fontSize: 15),
                              ),
                              Text(
                                "(2803)",
                                style: context.textTheme.bodyText2
                                    ?.copyWith(fontSize: 15, height: 20 / 15),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "\$59/",
                                style: context.textTheme.bodyText1
                                    ?.copyWith(fontSize: 15),
                              ),
                              Text(
                                "Person",
                                style: context.textTheme.bodyText2
                                    ?.copyWith(fontSize: 15, height: 22 / 15),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    PlacePreviewWidget(
                      placePreviews: widget.placeDto.placeViewImage ?? [],
                      onClickView: (index) {
                        Navigator.pushNamed(context, PlaceViewPage.routeName,
                            arguments:
                                Tuple2(widget.placeDto.placeViewImage!, index));
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      "About Destination",
                      style:
                          context.textTheme.bodyText1?.copyWith(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ReadMoreText(
                      widget.placeDto.placeDescription ?? S.current.no_data,
                      trimLines: 5,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      style:
                          context.textTheme.bodyText2?.copyWith(fontSize: 13),
                      moreStyle: context.textTheme.bodyText2
                          ?.copyWith(fontSize: 13, color: AppColors.hFF7029),
                      lessStyle: context.textTheme.bodyText2
                          ?.copyWith(fontSize: 13, color: AppColors.hFF7029),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                  onPressed: () {
                    context.read<ThemeBloc>().changeTheme();
                  },
                  child: const Text("Book Now")),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
