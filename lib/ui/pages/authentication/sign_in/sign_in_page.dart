import 'package:flutter/material.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/blocs/blocs.dart';
import 'package:flutter_application/ui/pages/authentication/forgot_password/forgot_password_page.dart';
import 'package:flutter_application/ui/pages/authentication/sign_up/sign_up_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/app_colors.dart';
import '../../../widgets/design_system/custom_text_field.dart';

class SignInPage extends StatefulWidget {
  static const String routeName = "SignInPage";

  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                  height: 92,
                ),
                Text(
                  S.current.sign_in_now,
                  textAlign: TextAlign.center,
                  style: context.textTheme.headline6
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  S.current.sign_in_now_description,
                  style: context.textTheme.bodyText1
                      ?.copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 40,
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
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ForgotPasswordPage.routeName);
                    },
                    child: Text(
                      S.current.forgot_pass_word,
                      style: context.textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.h0D6EFD),
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
                    child: Text(S.current.sign_in),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(SignUpPage.routeName);
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: S.current.do_not_have_account,
                        style: context.textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.w300,
                          color: AppColors.h707B81,
                        ),
                      ),
                      TextSpan(
                        text: S.current.sign_up,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
