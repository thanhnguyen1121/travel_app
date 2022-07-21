import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/pages/authentication/otp_verify/otp_verification_page.dart';
import 'package:flutter_application/ui/widgets/design_system/custom_text_field.dart';
import 'package:flutter_application/ui/widgets/dialogs/dialog_utils.dart';
import 'package:flutter_application/utils/context_extension.dart';

class ForgotPasswordPage extends StatefulWidget {
  static const routeName = 'ForgotPasswordPage';

  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();

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
                  S.current.forgot_password_title,
                  textAlign: TextAlign.center,
                  style: context.textTheme.headline6
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  S.current.forgot_password_description,
                  textAlign: TextAlign.center,
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
                  height: 56,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      DialogUtils.showNotificationDialog(
                          context: context,
                          icon: Assets.icons.icChangePassword
                              .svg(width: 44, height: 44),
                          title: S.current.check_your_email,
                          message: S.current.change_password_notification,
                          onOkTap: () {
                            Navigator.pushNamed(
                                context, OtpVerificationPage.routeName,
                                arguments: emailController.text);
                          });
                    },
                    child: Text(S.current.reset_password),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
