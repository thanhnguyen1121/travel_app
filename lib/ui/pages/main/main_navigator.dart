import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/place_dto.dart';
import 'package:flutter_application/ui/blocs/home/home_bloc.dart';
import 'package:flutter_application/ui/pages/home/home_page.dart';
import 'package:flutter_application/ui/pages/home/place_detail/place_detail_page.dart';
import 'package:flutter_application/ui/pages/home/place_view/place_view_page.dart';
import 'package:flutter_application/utils/navigator_support.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tuple/tuple.dart';

import 'app_page_route.dart';
import 'main_page.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({Key? key}) : super(key: key);

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: GetIt.instance.get<HomeBloc>()),
      ],
      child: NavigatorSupport(
        initialRoute: MainPage.routerName,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case HomePage.routerName:
              return AppPageRoute(builder: (context) => const HomePage());
            case PlaceDetailPage.routeName:
              return AppPageRoute(
                builder: (context) =>
                    PlaceDetailPage(placeDto: settings.arguments as PlaceDto),
              );
            case PlaceViewPage.routeName:
              return AppPageRoute(
                builder: (context) => PlaceViewPage(
                    data: settings.arguments as Tuple2<List<String>, int>),
              );
            case MainPage.routerName:
              return AppPageRoute(
                builder: (context) => MainPage(),
              );
            default:
              return MaterialPageRoute(builder: (context) => MainPage());
          }
        },
        observers: [HeroController()],
      ),
    );
  }
}
