import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/widgets/design_system/pin_code_text_field.dart';
import 'package:flutter_application/utils/context_extension.dart';

import 'count_down_widget.dart';

class OtpVerificationPage extends StatefulWidget {
  static const routeName = 'OtpVerificationPage';
  final String email;

  const OtpVerificationPage({Key? key, required this.email}) : super(key: key);

  @override
  _OtpVerificationPageState createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final codeOneController = TextEditingController();
  final codeTwoController = TextEditingController();
  final codeThreeController = TextEditingController();
  final codeFourController = TextEditingController();

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
                  S.current.otp_verify,
                  style: context.textTheme.headline6
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  S.current.otp_verify_description(widget.email),
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyText1
                      ?.copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.current.otp_verify_code,
                    textAlign: TextAlign.left,
                    style: context.textTheme.bodyText1
                        ?.copyWith(fontSize: 20, height: 28 / 20),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: PinCodeTextField(
                          textEditingController: codeOneController,
                          maxLength: 1,
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: PinCodeTextField(
                            textEditingController: codeTwoController,
                            maxLength: 1),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: PinCodeTextField(
                            textEditingController: codeThreeController,
                            maxLength: 1),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: PinCodeTextField(
                            textEditingController: codeFourController,
                            maxLength: 1),
                      )
                    ],
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
                    onPressed: () {},
                    child: Text(S.current.verify),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        S.current.resend_code_to,
                        style: context.textTheme.bodyText2,
                      ),
                      const Spacer(),
                      const CountDownWidget()
                    ],
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
