import 'package:flutter/material.dart';
import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/lib.dart';

import 'user_like_widget.dart';

class PlaceCardWidget extends StatelessWidget {
  final VoidCallback? onTab;
  final PlaceModel placeModel;

  const PlaceCardWidget({Key? key, required this.placeModel, this.onTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTab?.call();
      },
      child: Container(
        width: 268,
        height: 384,
        decoration: BoxDecoration(
          color: context.colorScheme.secondaryContainer,
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Hero(
                          tag: placeModel.id.toString(),
                          child: Image.asset(
                              placeModel.placeUrl ?? S.current.default_image,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.fitHeight),
                          transitionOnUserGestures: false,
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 14,
                    right: 14,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Assets.icons.icTag.svg(width: 34, height: 34),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          placeModel.placeTitle ?? S.current.no_data,
                          maxLines: 1,
                          style: context.textTheme.bodyText1?.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Assets.icons.icStar.svg(width: 16, height: 16),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        (placeModel.placeStar ?? 0).toStringAsFixed(1),
                        style: context.textTheme.bodyText2?.copyWith(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Assets.icons.icLocation.svg(width: 14, height: 14),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            placeModel.placeLocation ?? S.current.no_data,
                            maxLines: 1,
                            style: context.textTheme.bodyText2?.copyWith(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ),
                        Expanded(
                            child: UserLikeWidget(
                                count: placeModel.placeCountLike ?? 0)),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
