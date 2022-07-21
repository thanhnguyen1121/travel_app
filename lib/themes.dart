import 'package:flutter/material.dart';

import 'constants/app_colors.dart';
import 'gen/fonts.gen.dart';

ThemeData light() {
  return ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    colorScheme: ThemeData.light().colorScheme.copyWith(
          secondary: AppColors.h1B1E28,
          primary: AppColors.hE8E8F3,
          primaryContainer: AppColors.hF7F7F9,
          secondaryContainer: Colors.white,
        ),
    textTheme: const TextTheme().copyWith(
      headline3: ThemeData.light().textTheme.headline5?.copyWith(
            color: AppColors.h16181F,
            fontSize: 38,
            height: 50 / 38,
            fontFamily: FontFamily.sfUiDisplay,
          ),
      headline5: ThemeData.light().textTheme.headline5?.copyWith(
            color: AppColors.h16181F,
            fontSize: 30,
            fontFamily: FontFamily.geometric415,
          ),
      headline6: ThemeData.light().textTheme.headline6?.copyWith(
            color: AppColors.h1B1E28,
            fontSize: 26,
            height: 32 / 26,
            fontFamily: FontFamily.sfUiDisplay,
          ),
      subtitle1: ThemeData.light().textTheme.subtitle1?.copyWith(
          color: AppColors.h7D848D,
          fontSize: 16,
          height: 24 / 16,
          fontFamily: FontFamily.gillSansMt),
      bodyText1: ThemeData.light().textTheme.bodyText1?.copyWith(
          color: AppColors.h1B1E28,
          fontSize: 16,
          height: 24 / 16,
          fontFamily: FontFamily.sfUiDisplay),
      bodyText2: ThemeData.light().textTheme.bodyText1?.copyWith(
          color: AppColors.h7D848D,
          fontSize: 14,
          height: 16 / 14,
          fontFamily: FontFamily.sfUiDisplay),
      caption: ThemeData.light().textTheme.bodyText1?.copyWith(
          color: AppColors.h1B1E28,
          fontSize: 12,
          height: 16 / 12,
          fontFamily: FontFamily.sfUiDisplay),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (_) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            );
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (_) {
            return AppColors.h0D6EFD;
          },
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: ThemeData.light()
          .textTheme
          .bodyText2
          ?.copyWith(color: AppColors.h7D848D),
      labelStyle: ThemeData.light().textTheme.bodyText1,
      suffixStyle: const TextStyle(color: Colors.black),
      errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
      contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      filled: true,
      fillColor: AppColors.hE8E8F3,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.transparent, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.transparent, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.transparent, width: 1),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.transparent, width: 1),
      ),
    ),
  );
}

ThemeData dark() {
  return ThemeData.dark().copyWith(
    backgroundColor: AppColors.h16181F,
    colorScheme: ThemeData.light().colorScheme.copyWith(
        secondary: Colors.white,
        primary: AppColors.h20232D,
        primaryContainer: AppColors.h20232D,
        secondaryContainer: AppColors.h20232D),
    textTheme: const TextTheme().copyWith(
      headline3: ThemeData.light().textTheme.headline5?.copyWith(
            color: Colors.white,
            fontSize: 38,
            height: 50 / 38,
            fontFamily: FontFamily.sfUiDisplay,
          ),
      headline5: ThemeData.light().textTheme.headline5?.copyWith(
            color: Colors.white,
            fontSize: 30,
            fontFamily: FontFamily.geometric415,
          ),
      headline6: ThemeData.light().textTheme.headline6?.copyWith(
            color: Colors.white,
            fontSize: 26,
            height: 32 / 26,
            fontFamily: FontFamily.sfUiDisplay,
          ),
      subtitle1: ThemeData.light().textTheme.subtitle1?.copyWith(
          color: AppColors.h7D848D,
          fontSize: 16,
          height: 24 / 16,
          fontFamily: FontFamily.gillSansMt),
      bodyText1: ThemeData.light().textTheme.bodyText1?.copyWith(
          color: Colors.white,
          fontSize: 16,
          height: 24 / 16,
          fontFamily: FontFamily.sfUiDisplay),
      bodyText2: ThemeData.light().textTheme.bodyText1?.copyWith(
          color: AppColors.h7D848D,
          fontSize: 14,
          height: 16 / 14,
          fontFamily: FontFamily.sfUiDisplay),
      caption: ThemeData.light().textTheme.bodyText1?.copyWith(
          color: AppColors.h1B1E28,
          fontSize: 12,
          height: 16 / 12,
          fontFamily: FontFamily.sfUiDisplay),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (_) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            );
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (_) {
            return AppColors.h0D6EFD;
          },
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: ThemeData.light()
          .textTheme
          .bodyText2
          ?.copyWith(color: AppColors.h7D848D),
      labelStyle: ThemeData.light().textTheme.bodyText1,
      suffixStyle: const TextStyle(color: Colors.black),
      errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
      contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      filled: true,
      fillColor: AppColors.h20232D,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.transparent, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.transparent, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.transparent, width: 1),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.transparent, width: 1),
      ),
    ),
  );
}
