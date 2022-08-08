import 'package:flutter_application/constants/app_enum.dart';
import 'package:flutter_application/domain/entity/user_message_model.dart';

class UserMessageDto extends UserMessageModel {
  UserMessageDto({
    required int id,
    String? userAvatar,
    String? userName,
    String? userLastMessage,
    UserStatus? userStatus,
    bool? userTyping,
    String? userLatestSendTime,
    MessageSendStatus? messageSendStatus,
    MessageType? messageType,
  }) : super(
          id: id,
          userAvatar: userAvatar,
          userLastMessage: userLastMessage,
          userStatus: userStatus,
          userTyping: userTyping,
          userName: userName,
          userLatestSendTime: userLatestSendTime,
          messageSendStatus: messageSendStatus,
          messageType: messageType,
        );
}
