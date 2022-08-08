import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/theme/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes.dart';

class ThemeBloc extends Cubit<ThemeState> {
  ThemeBloc()
      : super(ThemeState(
            lightTheme: light(),
            dartTheme: dark(),
            enableDarkMode: false,
            themeMode: ThemeMode.dark));

  void changeTheme() {
    if (state.enableDarkMode) {
      emit(state.copyWith(enableDarkMode: false));
    } else {
      emit(state.copyWith(enableDarkMode: true));
    }
  }
}
