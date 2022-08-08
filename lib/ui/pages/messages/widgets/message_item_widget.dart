import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/constants/app_enum.dart';
import 'package:flutter_application/domain/entity/user_message_model.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/utils/context_extension.dart';

import 'user_status_widget.dart';

class MessageItemWidget extends StatelessWidget {
  final UserMessageModel model;
  final ValueChanged<int>? onClickItem;

  const MessageItemWidget({Key? key, required this.model, this.onClickItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClickItem?.call(model.id);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserStatusWidget(model: model),
            const SizedBox(
              width: 14,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.userName ?? S.current.no_data,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodyText1?.copyWith(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  if (model.userTyping ?? false)
                    Text(
                      "Typing...",
                      style: context.textTheme.bodyText2
                          ?.copyWith(fontSize: 14, color: AppColors.h0D6EFD),
                    )
                  else
                    Text(
                      model.userLastMessage ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          context.textTheme.bodyText2?.copyWith(fontSize: 14),
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  if (model.messageSendStatus == MessageSendStatus.sending)
                    Assets.icons.icSending.svg(width: 16)
                  else
                    Assets.icons.icRead.svg(
                        width: 16,
                        color: model.messageSendStatus == MessageSendStatus.read
                            ? AppColors.h19B000
                            : AppColors.h7D848D),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    model.userLatestSendTime ?? S.current.no_data,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
