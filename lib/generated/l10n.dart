// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Home Page`
  String get home_page {
    return Intl.message(
      'Home Page',
      name: 'home_page',
      desc: '',
      args: [],
    );
  }

  /// `Life is short and the`
  String get onboard_one_first_line_title {
    return Intl.message(
      'Life is short and the',
      name: 'onboard_one_first_line_title',
      desc: '',
      args: [],
    );
  }

  /// `world is`
  String get onboard_one_second_line_title {
    return Intl.message(
      'world is',
      name: 'onboard_one_second_line_title',
      desc: '',
      args: [],
    );
  }

  /// `wide`
  String get onboard_one_high_light_title {
    return Intl.message(
      'wide',
      name: 'onboard_one_high_light_title',
      desc: '',
      args: [],
    );
  }

  /// `At Friends tours and travel, we customize\nreliable and trutworthy educational tours to\ndestinations all over the world`
  String get onboard_one_description {
    return Intl.message(
      'At Friends tours and travel, we customize\nreliable and trutworthy educational tours to\ndestinations all over the world',
      name: 'onboard_one_description',
      desc: '',
      args: [],
    );
  }

  /// `It’s a big world out`
  String get onboard_two_first_line_title {
    return Intl.message(
      'It’s a big world out',
      name: 'onboard_two_first_line_title',
      desc: '',
      args: [],
    );
  }

  /// `there go`
  String get onboard_two_second_line_title {
    return Intl.message(
      'there go',
      name: 'onboard_two_second_line_title',
      desc: '',
      args: [],
    );
  }

  /// `explore`
  String get onboard_two_high_light_title {
    return Intl.message(
      'explore',
      name: 'onboard_two_high_light_title',
      desc: '',
      args: [],
    );
  }

  /// `To get the best of your adventure you just\nneed to leave and go where you like. we are\nwaiting for you`
  String get onboard_two_description {
    return Intl.message(
      'To get the best of your adventure you just\nneed to leave and go where you like. we are\nwaiting for you',
      name: 'onboard_two_description',
      desc: '',
      args: [],
    );
  }

  /// `People don’t take trips,`
  String get onboard_three_first_line_title {
    return Intl.message(
      'People don’t take trips,',
      name: 'onboard_three_first_line_title',
      desc: '',
      args: [],
    );
  }

  /// `trips take`
  String get onboard_three_second_line_title {
    return Intl.message(
      'trips take',
      name: 'onboard_three_second_line_title',
      desc: '',
      args: [],
    );
  }

  /// `people`
  String get onboard_three_high_light_title {
    return Intl.message(
      'people',
      name: 'onboard_three_high_light_title',
      desc: '',
      args: [],
    );
  }

  /// `To get the best of your adventure you just\nneed to leave and go where you like. we are \nwaiting for you`
  String get onboard_three_description {
    return Intl.message(
      'To get the best of your adventure you just\nneed to leave and go where you like. we are \nwaiting for you',
      name: 'onboard_three_description',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onboard_get_started {
    return Intl.message(
      'Get Started',
      name: 'onboard_get_started',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get onboard_next {
    return Intl.message(
      'Next',
      name: 'onboard_next',
      desc: '',
      args: [],
    );
  }

  /// `Sign in now`
  String get sign_in_now {
    return Intl.message(
      'Sign in now',
      name: 'sign_in_now',
      desc: '',
      args: [],
    );
  }

  /// `Please sign in to continue our app`
  String get sign_in_now_description {
    return Intl.message(
      'Please sign in to continue our app',
      name: 'sign_in_now_description',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get forgot_pass_word {
    return Intl.message(
      'Forget Password?',
      name: 'forgot_pass_word',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account? `
  String get do_not_have_account {
    return Intl.message(
      'Don’t have an account? ',
      name: 'do_not_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Or connect`
  String get or_connect {
    return Intl.message(
      'Or connect',
      name: 'or_connect',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Sign up now`
  String get sign_up_now {
    return Intl.message(
      'Sign up now',
      name: 'sign_up_now',
      desc: '',
      args: [],
    );
  }

  /// `Please fill the details and create account`
  String get sign_up_description {
    return Intl.message(
      'Please fill the details and create account',
      name: 'sign_up_description',
      desc: '',
      args: [],
    );
  }

  /// `Your name`
  String get user_name {
    return Intl.message(
      'Your name',
      name: 'user_name',
      desc: '',
      args: [],
    );
  }

  /// `Password must be 8 character`
  String get password_require {
    return Intl.message(
      'Password must be 8 character',
      name: 'password_require',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account `
  String get have_account {
    return Intl.message(
      'Already have an account ',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forgot_password_title {
    return Intl.message(
      'Forgot password',
      name: 'forgot_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email account to reset\nyour password`
  String get forgot_password_description {
    return Intl.message(
      'Enter your email account to reset\nyour password',
      name: 'forgot_password_description',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get reset_password {
    return Intl.message(
      'Reset password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Check your email`
  String get check_your_email {
    return Intl.message(
      'Check your email',
      name: 'check_your_email',
      desc: '',
      args: [],
    );
  }

  /// `We have send password recovery\ninstruction to your email`
  String get change_password_notification {
    return Intl.message(
      'We have send password recovery\ninstruction to your email',
      name: 'change_password_notification',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `OTP Verification`
  String get otp_verify {
    return Intl.message(
      'OTP Verification',
      name: 'otp_verify',
      desc: '',
      args: [],
    );
  }

  /// `Please check your email {email}\nto see the verification code`
  String otp_verify_description(Object email) {
    return Intl.message(
      'Please check your email $email\nto see the verification code',
      name: 'otp_verify_description',
      desc: '',
      args: [email],
    );
  }

  /// `OTP Code`
  String get otp_verify_code {
    return Intl.message(
      'OTP Code',
      name: 'otp_verify_code',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Resend code to`
  String get resend_code_to {
    return Intl.message(
      'Resend code to',
      name: 'resend_code_to',
      desc: '',
      args: [],
    );
  }

  /// `Resend code`
  String get resend_code {
    return Intl.message(
      'Resend code',
      name: 'resend_code',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Calendar`
  String get calendar {
    return Intl.message(
      'Calendar',
      name: 'calendar',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Explore the`
  String get explore_the {
    return Intl.message(
      'Explore the',
      name: 'explore_the',
      desc: '',
      args: [],
    );
  }

  /// `Beautiful`
  String get beautiful {
    return Intl.message(
      'Beautiful',
      name: 'beautiful',
      desc: '',
      args: [],
    );
  }

  /// ` world`
  String get world {
    return Intl.message(
      ' world',
      name: 'world',
      desc: '',
      args: [],
    );
  }

  /// `Best Destination`
  String get best_destination {
    return Intl.message(
      'Best Destination',
      name: 'best_destination',
      desc: '',
      args: [],
    );
  }

  /// `View all`
  String get view_all {
    return Intl.message(
      'View all',
      name: 'view_all',
      desc: '',
      args: [],
    );
  }

  /// `No data`
  String get no_data {
    return Intl.message(
      'No data',
      name: 'no_data',
      desc: '',
      args: [],
    );
  }

  /// `assets/images/img_home_demo_one.png`
  String get default_image {
    return Intl.message(
      'assets/images/img_home_demo_one.png',
      name: 'default_image',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
