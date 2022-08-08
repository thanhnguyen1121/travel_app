import 'package:flutter/material.dart';
import 'package:flutter_application/domain/entity/message_model.dart';

import 'message_form_partner_item_widget.dart';

class MessageFormPartnerWidget extends StatelessWidget {
  final List<MessageModel> messageModels;

  const MessageFormPartnerWidget({Key? key, required this.messageModels})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8)
          .copyWith(right: 37),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              messageModels.first.userAvatar,
              width: 48,
              height: 48,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: messageModels
                  .asMap()
                  .entries
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: MessageFormPartnerItemWidget(
                        message: e.value.message,
                        timeSend: e.value.timeSent,
                        firstItem: e.key == 0,
                        lastItem: e.key == messageModels.length - 1,
                        messageSendStatus: e.value.messageSendStatus,
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
