import 'package:auth_nav/auth_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/blocs.dart';
import 'package:flutter_application/ui/blocs/theme/theme_bloc.dart';
import 'package:flutter_application/ui/blocs/theme/theme_state.dart';
import 'package:flutter_application/ui/pages/onboard/onboard_page.dart';
import 'package:flutter_application/ui/pages/pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';

import 'data/datasource/local/local_service.dart';
import 'generated/l10n.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          theme: state.currentTheme,
          darkTheme: state.dartTheme,
          themeMode: state.currentThemeMode,
          debugShowCheckedModeBanner: false,
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          home: AuthNavigation(
            //Flow after user login success this page need user NavigatorSupport
            authorizedBuilder: (context) => const MainNavigator(),

            //Flow after user login success
            splashScreen: AppSplashPage((context) async {
              if (!GetIt.instance.get<LocalService>().isShowOnBoard()) {
                return AuthNavigationState.maintenance();
              } else if (GetIt.instance.get<LocalService>().isAuthorized()) {
                await GetIt.instance.get<AuthBloc>().initializeApp();
                return AuthNavigationState.authorized();
              } else {
                return AuthNavigationState.unAuthorized();
              }
            }),

            //Flow user login success this page need user NavigatorSupport
            unAuthorizedBuilder: (context) => const AuthenticationNavigator(),

            //Customize if application is have this feature!!
            maintenanceBuilder: (context) => const OnboardPage(),
          ),
        );
      },
    );
  }
}
