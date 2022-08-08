import 'package:flutter_application/domain/entity/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_detail_state.freezed.dart';

@freezed
abstract class MessageDetailState with _$MessageDetailState {
  const factory MessageDetailState(
      Map<String, List<MessageModel>> messageList) = MessageDetailStateData;

  const factory MessageDetailState.loading() = MessageDetailStateLoading;

  const factory MessageDetailState.error(dynamic error) =
      MessageDetailStateError;
}
