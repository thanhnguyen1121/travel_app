// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => MessageDto(
      id: json['id'] as int,
      message: json['message'] as String,
      messageType: $enumDecode(_$MessageTypeEnumMap, json['messageType']),
      timeSent: json['timeSent'] as String,
      messageSendStatus:
          $enumDecode(_$MessageSendStatusEnumMap, json['messageSendStatus']),
      userAvatar: json['userAvatar'] as String,
    );

Map<String, dynamic> _$MessageDtoToJson(MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'messageType': _$MessageTypeEnumMap[instance.messageType],
      'timeSent': instance.timeSent,
      'messageSendStatus':
          _$MessageSendStatusEnumMap[instance.messageSendStatus],
      'userAvatar': instance.userAvatar,
    };

const _$MessageTypeEnumMap = {
  MessageType.formOther: 'formOther',
  MessageType.formMe: 'formMe',
};

const _$MessageSendStatusEnumMap = {
  MessageSendStatus.sending: 'sending',
  MessageSendStatus.received: 'received',
  MessageSendStatus.read: 'read',
};
