import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

import '../../../generated/l10n.dart';

class DialogUtils {
  static void showNotificationDialog(
      {required BuildContext context,
      Widget? icon,
      String? title,
      String? message,
      VoidCallback? onOkTap}) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [icon],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
                if (title != null) ...[
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyText1?.copyWith(
                        fontSize: 18,
                        height: 24 / 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  )
                ],
                if (message != null)
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyText2?.copyWith(
                        fontSize: 16,
                        height: 24 / 18,
                        fontWeight: FontWeight.w300),
                  ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    onOkTap?.call();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(S.current.ok),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
