import 'dart:async';

import 'package:auth_nav/auth_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/app_colors.dart';
import '../../../data/datasource/local/local_service.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import 'onboard_widget.dart';

class OnboardPage extends StatefulWidget {
  static const routeName = 'OnboardPage';

  const OnboardPage({Key? key}) : super(key: key);

  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final controller = PageController(keepPage: true);
  final StreamController<int> buttonStream = StreamController.broadcast();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                buttonStream.sink.add(index);
              },
              children: [
                OnboardWidget(
                    imagePath: Assets.images.imgOnboardOne.path,
                    titleFirstLine: S.current.onboard_one_first_line_title,
                    titleSecondLine: S.current.onboard_one_second_line_title,
                    highLightTitle: S.current.onboard_one_high_light_title,
                    description: S.current.onboard_one_description),
                OnboardWidget(
                    imagePath: Assets.images.imgOnboardTwo.path,
                    titleFirstLine: S.current.onboard_two_first_line_title,
                    titleSecondLine: S.current.onboard_two_second_line_title,
                    highLightTitle: S.current.onboard_two_high_light_title,
                    description: S.current.onboard_two_description),
                OnboardWidget(
                    imagePath: Assets.images.imgOnboardThree.path,
                    titleFirstLine: S.current.onboard_three_first_line_title,
                    titleSecondLine: S.current.onboard_three_second_line_title,
                    highLightTitle: S.current.onboard_three_high_light_title,
                    description: S.current.onboard_three_description)
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            axisDirection: Axis.horizontal,
            effect: const ExpandingDotsEffect(
                spacing: 8.0,
                radius: 8.0,
                dotWidth: 16.0,
                dotHeight: 8.0,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1.5,
                dotColor: AppColors.hCAEAFF,
                activeDotColor: AppColors.h0D6EFD),
          ),
          const SizedBox(height: 40),
          Container(
            width: double.infinity,
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () async {
                await GetIt.instance.get<LocalService>().savaShowOnBoard(true);
                context
                    .read<AuthNavigationBloc>()
                    .emit(AuthNavigationState.unAuthorized());
              },
              child: StreamBuilder<int>(
                stream: buttonStream.stream,
                builder: (context, snapshot) {
                  String title = S.current.onboard_get_started;
                  if (snapshot.hasData && snapshot.data != 0) {
                    title = S.current.onboard_next;
                  }
                  return Text(title);
                },
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
