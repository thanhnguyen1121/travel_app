import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

import '../../../constants/app_colors.dart';

class OnboardWidget extends StatelessWidget {
  final String imagePath;
  final String titleFirstLine;
  final String titleSecondLine;
  final String highLightTitle;
  final String description;

  const OnboardWidget(
      {Key? key,
      required this.imagePath,
      required this.titleFirstLine,
      required this.titleSecondLine,
      required this.highLightTitle,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      titleFirstLine,
                      style: context.textTheme.headline5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleSecondLine,
                          style: context.textTheme.headline5,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              highLightTitle,
                              style: context.textTheme.headline5
                                  ?.copyWith(color: AppColors.hFF7029),
                            ),
                            Assets.icons.icOnboard.svg(height: 12)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: context.textTheme.subtitle1,
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
