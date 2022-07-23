import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.transparent,
      child: ColorFiltered(
        colorFilter:
            ColorFilter.mode(context.colorScheme.secondary, BlendMode.srcATop),
        child: const CupertinoActivityIndicator(radius: 16),
      ),
    );
  }
}
