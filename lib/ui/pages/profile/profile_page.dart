import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/data/dto/user_dto.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/blocs/theme/theme_bloc.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/profile_more_info_widget.dart';
import 'widgets/profile_user_widget.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = 'ProfilePage';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final UserDto userDto = UserDto(
    userName: "thanhnguyen",
    userAvatar: Assets.images.imgUserTwo.path,
    userEmail: "thanhnguyen9908@gmail.com",
    bucketList: 100,
    userRewardPoint: 100,
    userTravelTrips: 100,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: context.theme.backgroundColor,
        centerTitle: true,
        title: Text(
          S.current.profile,
          style: context.textTheme.bodyText1
              ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        actions: [
          Container(
            width: 44,
            height: 44,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: context.colorScheme.primary),
            child: Assets.icons.icEditProfile
                .svg(width: 24, height: 24, color: AppColors.h0D6EFD),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileUserWidget(
                  userModel: userDto,
                ),
                const SizedBox(
                  height: 30,
                ),
                const ProfileMoreInfoWidget()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ThemeBloc>().changeTheme();
        },
        child: Text("change"),
      ),
    );
  }
}
