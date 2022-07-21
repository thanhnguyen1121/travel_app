import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/theme/theme_bloc.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../generated/l10n.dart';
import '../../../blocs/auth/auth_bloc.dart';
import '../../../widgets/design_system/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = 'SignUpPage';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final yourNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: 44,
                        height: 44,
                        margin: const EdgeInsets.only(left: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.colorScheme.primary),
                        child: Assets.icons.icBack
                            .svg(color: context.colorScheme.secondary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  S.current.sign_up_now,
                  textAlign: TextAlign.center,
                  style: context.textTheme.headline6
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  S.current.sign_up_description,
                  style: context.textTheme.bodyText1
                      ?.copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(
                    textEditingController: yourNameController,
                    hint: S.current.user_name,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(
                    textEditingController: emailController,
                    hint: S.current.email,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(
                    textEditingController: passwordController,
                    hint: S.current.password,
                    isPassword: true,
                    suffixIcon: Assets.icons.icHidePassword.svg(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      S.current.password_require,
                      style: context.textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.w300,
                          color: AppColors.h7D848D),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 56,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().signIn(
                          email: emailController.text,
                          password: passwordController.text);
                    },
                    child: Text(S.current.sign_up),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: S.current.have_account,
                        style: context.textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.w300,
                          color: AppColors.h707B81,
                        ),
                      ),
                      TextSpan(
                        text: S.current.sign_in,
                        style: context.textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.h0D6EFD,
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  S.current.or_connect,
                  style: context.textTheme.bodyText2?.copyWith(
                      color: AppColors.h707B81, fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<AuthBloc>().signInWithFaceBook();
                      },
                      child: Assets.icons.icFacebook.svg(width: 44, height: 44),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          context.read<AuthBloc>().signInWithInstagram();
                        },
                        child: Assets.icons.icInstagram
                            .image(width: 44, height: 44)),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          context.read<AuthBloc>().signInWithTwitter();
                        },
                        child:
                            Assets.icons.icTwitter.svg(width: 44, height: 44)),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<ThemeBloc>().changeTheme();
                    },
                    child: const Text("hihi"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
