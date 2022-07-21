import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

class AppErrorWidget extends StatelessWidget {
  final String message;

  const AppErrorWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        message,
        style: context.textTheme.bodyText1,
      ),
    );
  }
}
