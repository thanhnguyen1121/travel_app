import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/constants/app_enum.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/utils/context_extension.dart';

class MessageFormPartnerItemWidget extends StatelessWidget {
  final bool firstItem;
  final bool lastItem;
  final String message;
  final String timeSend;
  final MessageSendStatus messageSendStatus;

  const MessageFormPartnerItemWidget(
      {Key? key,
      required this.message,
      required this.firstItem,
      required this.lastItem,
      required this.timeSend,
      required this.messageSendStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ).copyWith(
            topLeft: firstItem ? const Radius.circular(16) : Radius.zero,
            bottomLeft: lastItem ? const Radius.circular(16) : Radius.zero),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: message.length > 30
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: context.textTheme.bodyText1?.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      timeSend,
                      style: context.textTheme.bodyText2,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Assets.icons.icRead.svg(
                        width: 16,
                        color: messageSendStatus == MessageSendStatus.read
                            ? AppColors.h19B000
                            : AppColors.h7D848D),
                  ],
                )
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  message,
                  style: context.textTheme.bodyText1?.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      timeSend,
                      style: context.textTheme.bodyText2,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Assets.icons.icRead.svg(
                        width: 16,
                        color: messageSendStatus == MessageSendStatus.read
                            ? AppColors.h19B000
                            : AppColors.h7D848D),
                  ],
                )
              ],
            ),
    );
  }
}
