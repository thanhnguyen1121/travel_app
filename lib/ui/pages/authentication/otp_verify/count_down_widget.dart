import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/widgets/dialogs/dialog_utils.dart';
import 'package:flutter_application/utils/context_extension.dart';

class CountDownWidget extends StatefulWidget {
  const CountDownWidget({Key? key}) : super(key: key);

  @override
  _CountDownWidgetState createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  final StreamController<String> countdownStream = StreamController.broadcast();
  late Timer timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: countdownStream.stream,
      builder: (context, snapshot) {
        Widget child = Container();
        if (snapshot.hasData) {
          if (snapshot.requireData != "00:00") {
            child = Container(
              alignment: Alignment.center,
              child: Text(
                snapshot.requireData,
                style: context.textTheme.bodyText2,
              ),
            );
          } else {
            child = ElevatedButton(
              onPressed: () {
                DialogUtils.showNotificationDialog(
                    context: context,
                    icon: Assets.icons.icChangePassword
                        .svg(width: 44, height: 44),
                    title: S.current.check_your_email,
                    message: S.current.change_password_notification,
                    onOkTap: () {
                      startTimer();
                    });
              },
              child: Text(S.current.resend_code),
            );
          }
        }
        return child;
      },
    );
  }

  void startTimer() {
    int startSeconds = 120;
    String timeToShow = "";
    timer = Timer.periodic(const Duration(seconds: 1), (time) {
      startSeconds = startSeconds - 1;
      if (startSeconds == 0) {
        timer.cancel();
      }

      int minutes = startSeconds ~/ 60;
      int seconds = (startSeconds % 60);
      timeToShow = minutes.toString().padLeft(2, "0") +
          ":" +
          seconds.toString().padLeft(2, "0");
      countdownStream.sink.add(timeToShow);
    });
  }
}
