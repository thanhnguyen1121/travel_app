import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/lib.dart';
import 'package:intl/intl.dart';

class PlaceCalendarWidget extends StatelessWidget {
  final PlaceModel placeModel;

  const PlaceCalendarWidget({Key? key, required this.placeModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: context.colorScheme.secondaryContainer,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              placeModel.placeUrl ?? S.current.default_image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Assets.icons.icCalendar.svg(width: 16, height: 16),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Text(
                        DateFormat("dd MMMM yyyy")
                            .format(placeModel.placeSchedule ?? DateTime.now()),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                            context.textTheme.bodyText2?.copyWith(fontSize: 13),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        placeModel.placeTitle ?? S.current.no_data,
                        style: context.textTheme.bodyText1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: AppColors.h7D848D,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Assets.icons.icLocation.svg(width: 16, height: 16),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Text(
                        placeModel.placeLocation ?? S.current.no_data,
                        style:
                            context.textTheme.bodyText2?.copyWith(fontSize: 13),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
