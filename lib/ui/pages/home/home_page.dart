import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/home/home_bloc.dart';
import 'package:flutter_application/ui/blocs/home/home_state.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_error_widget.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/header_widget.dart';
import 'widgets/list_place_widget.dart';

class HomePage extends StatefulWidget {
  static const String routerName = "HomePage";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().init();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.map(
            (value) {
              return Column(
                children: const [
                  HeaderWidget(),
                  ListPlaceWidget(),
                ],
              );
            },
            loading: (_) => const AppLoadingWidget(),
            error: (error) => AppErrorWidget(
              message: error.toString(),
            ),
          );
        },
      ),
    );
  }
}
