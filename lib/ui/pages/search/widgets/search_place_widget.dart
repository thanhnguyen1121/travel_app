import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/utils/context_extension.dart';

class SearchPlaceWidget extends StatelessWidget {
  final PlaceModel placeModel;
  final VoidCallback? onTap;

  const SearchPlaceWidget({Key? key, required this.placeModel, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: context.colorScheme.secondaryContainer,
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.onSecondaryContainer,
              blurRadius: 2,
              offset: const Offset(0, 6),
            )
          ],
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Hero(
                tag: placeModel.id.toString(),
                child: Image.asset(
                  placeModel.placeUrl ?? S.current.default_image,
                  height: 124,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              placeModel.placeTitle ?? S.current.no_data,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyText1?.copyWith(fontSize: 14),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Assets.icons.icLocation.svg(
                  width: 14,
                  height: 14,
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                    placeModel.placeLocation ?? S.current.no_data,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: context.textTheme.caption
                        ?.copyWith(color: AppColors.h7D848D),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(children: [
                TextSpan(
                  text: "\$980/",
                  style: context.textTheme.caption
                      ?.copyWith(color: AppColors.h0D6EFD),
                ),
                TextSpan(
                    text: "Person",
                    style: context.textTheme.caption
                        ?.copyWith(color: AppColors.h7D848D))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
