import 'package:flutter_application/domain/entity/user_message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_state.freezed.dart';

@freezed
abstract class MessageState with _$MessageState {
  const factory MessageState(Map<String, UserMessageModel> messageList) =
      MessageStateData;

  const factory MessageState.loading() = MessageStateLoading;

  const factory MessageState.error(dynamic error) = MessageStateError;
}
