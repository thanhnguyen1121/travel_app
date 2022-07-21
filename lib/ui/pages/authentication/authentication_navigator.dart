import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/authentication/sign_up/sign_up_page.dart';
import 'package:flutter_application/utils/navigator_support.dart';

import '../pages.dart';
import 'forgot_password/forgot_password_page.dart';
import 'otp_verify/otp_verification_page.dart';

class AuthenticationNavigator extends StatefulWidget {
  const AuthenticationNavigator({Key? key}) : super(key: key);

  @override
  _AuthenticationNavigatorState createState() =>
      _AuthenticationNavigatorState();
}

class _AuthenticationNavigatorState extends State<AuthenticationNavigator> {
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: SignInPage.routeName,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case SignInPage.routeName:
            return MaterialPageRoute(
              builder: (context) => const SignInPage(),
              settings: const RouteSettings(name: SignInPage.routeName),
            );
          case SignUpPage.routeName:
            return MaterialPageRoute(
              builder: (context) => const SignUpPage(),
              settings: const RouteSettings(name: SignUpPage.routeName),
            );
          case ForgotPasswordPage.routeName:
            return MaterialPageRoute(
              builder: (context) => const ForgotPasswordPage(),
              settings: const RouteSettings(name: ForgotPasswordPage.routeName),
            );
          case OtpVerificationPage.routeName:
            return MaterialPageRoute(
              builder: (context) =>
                  OtpVerificationPage(email: settings.arguments as String),
              settings:
                  const RouteSettings(name: OtpVerificationPage.routeName),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const SignInPage(),
              settings: const RouteSettings(name: SignInPage.routeName),
            );
        }
      },
    );
  }
}
