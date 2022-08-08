import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/constants/app_enum.dart';
import 'package:flutter_application/domain/entity/message_model.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/utils/context_extension.dart';

class MessageFormMeWidget extends StatelessWidget {
  final List<MessageModel> messageModels;

  const MessageFormMeWidget({Key? key, required this.messageModels})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 6,
      children: messageModels
          .map((messageModel) => Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(left: 110, right: 20),
                      decoration: BoxDecoration(
                        color: context.colorScheme.onTertiaryContainer,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ).copyWith(bottomRight: const Radius.circular(0)),
                      ),
                      padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12)
                          .copyWith(right: 12),
                      child: messageModel.message.length > 30
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  messageModel.message,
                                  style: context.textTheme.bodyText1
                                      ?.copyWith(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      messageModel.timeSent,
                                      style: context.textTheme.bodyText2,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Assets.icons.icRead.svg(
                                        width: 16,
                                        color: messageModel.messageSendStatus ==
                                                MessageSendStatus.read
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
                                  messageModel.message,
                                  style: context.textTheme.bodyText1
                                      ?.copyWith(fontSize: 14),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      messageModel.timeSent,
                                      style: context.textTheme.bodyText2,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Assets.icons.icRead.svg(
                                        width: 16,
                                        color: messageModel.messageSendStatus ==
                                                MessageSendStatus.read
                                            ? AppColors.h19B000
                                            : AppColors.h7D848D),
                                  ],
                                )
                              ],
                            ),
                    ),
                  ),
                ],
              ))
          .toList(),
    );
  }
}
