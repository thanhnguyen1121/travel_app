import 'package:flutter_application/constants/app_enum.dart';

abstract class UserMessageModel {
  int id;
  String? userAvatar;
  String? userName;
  String? userLastMessage;
  UserStatus? userStatus;
  bool? userTyping;
  String? userLatestSendTime;
  MessageSendStatus? messageSendStatus;
  MessageType? messageType;

  UserMessageModel(
      {required this.id,
      this.userAvatar,
      this.userName,
      this.userLastMessage,
      this.userStatus,
      this.userTyping,
      this.userLatestSendTime,
      this.messageSendStatus,
      this.messageType});
}
