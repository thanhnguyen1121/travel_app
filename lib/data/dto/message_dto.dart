import 'package:flutter_application/constants/app_enum.dart';
import 'package:flutter_application/domain/entity/message_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_dto.g.dart';

@JsonSerializable()
class MessageDto extends MessageModel {
  MessageDto(
      {required int id,
      required String message,
      required MessageType messageType,
      required String timeSent,
      required MessageSendStatus messageSendStatus,
      required String userAvatar})
      : super(
            id: id,
            message: message,
            messageType: messageType,
            timeSent: timeSent,
            messageSendStatus: messageSendStatus,
            userAvatar: userAvatar);

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MessageDtoToJson(this);
}
