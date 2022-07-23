import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/place_dto.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/utils/context_extension.dart';

import 'widgets/info_widget.dart';

class PlaceDetailPage extends StatelessWidget {
  static const routeName = '/PlaceDetailPage';
  final PlaceDto placeDto;

  const PlaceDetailPage({Key? key, required this.placeDto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: context.colorScheme.primaryContainer,
          ),
          SizedBox(
            height: 500,
            child: Hero(
              tag: placeDto.id.toString(),
              child: Image.asset(placeDto.placeUrl ?? S.current.default_image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: double.infinity),
            ),
          ),
          Positioned.fill(
            top: 64,
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
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
                            shape: BoxShape.circle,
                            color: context.colorScheme.primary),
                        child: Assets.icons.icBack
                            .svg(color: context.colorScheme.secondary),
                      ),
                    ),
                    Text(
                      "Details",
                      style:
                          context.textTheme.bodyText1?.copyWith(fontSize: 18),
                    ),
                    Assets.icons.icTag.svg(width: 44, height: 44)
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 2 - 80,
            child: Align(
              alignment: Alignment.center,
              child: InfoWidget(placeDto: placeDto),
            ),
          )
        ],
      ),
    );
  }
}
