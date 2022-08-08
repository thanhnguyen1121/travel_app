import 'package:flutter_application/constants/app_enum.dart';

abstract class MessageModel {
  int id;
  String message;
  MessageType messageType;
  String timeSent;
  MessageSendStatus messageSendStatus;
  String userAvatar;

  MessageModel({
    required this.id,
    required this.message,
    required this.messageType,
    required this.timeSent,
    required this.messageSendStatus,
    required this.userAvatar,
  });
}
