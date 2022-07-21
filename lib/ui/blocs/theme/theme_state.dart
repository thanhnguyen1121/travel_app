import 'package:flutter/material.dart';

class ThemeState {
  final ThemeData lightTheme;
  final ThemeData dartTheme;
  bool enableDarkMode = true;
  ThemeMode themeMode;

  ThemeState(
      {required this.lightTheme,
      required this.dartTheme,
      required this.enableDarkMode,
      required this.themeMode});

  ThemeData get currentTheme {
    if (enableDarkMode) {
      return dartTheme;
    } else {
      return lightTheme;
    }
  }

  ThemeMode get currentThemeMode {
    if (enableDarkMode) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ThemeState &&
          runtimeType == other.runtimeType &&
          lightTheme == other.lightTheme &&
          dartTheme == other.dartTheme &&
          enableDarkMode == other.enableDarkMode);

  @override
  int get hashCode =>
      lightTheme.hashCode ^ dartTheme.hashCode ^ enableDarkMode.hashCode;

  ThemeState copyWith({
    ThemeData? lightTheme,
    ThemeData? dartTheme,
    bool? enableDarkMode,
    ThemeMode? themeMode,
  }) {
    return ThemeState(
      lightTheme: lightTheme ?? this.lightTheme,
      dartTheme: dartTheme ?? this.dartTheme,
      enableDarkMode: enableDarkMode ?? this.enableDarkMode,
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
