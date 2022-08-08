import 'dart:math';

import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/constants/app_enum.dart';
import 'package:flutter_application/data/dto/user_message_dto.dart';
import 'package:flutter_application/domain/entity/user_message_model.dart';
import 'package:flutter_application/ui/blocs/message/message_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:intl/intl.dart';

class MessageBloc extends Cubit<MessageState> {
  MessageBloc() : super(const MessageState.loading());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    Map<String, UserMessageModel> messageMap = {};
    for (int i = 0; i < 10; i++) {
      UserMessageDto userMessageDto = UserMessageDto(
          id: i + 1,
          messageSendStatus: Random().nextInt(100) % 3 == 0
              ? MessageSendStatus.read
              : Random().nextInt(100) % 3 == 1
                  ? MessageSendStatus.sending
                  : MessageSendStatus.received,
          userAvatar: AppUserImage.imageList[Random().nextInt(3)],
          userLastMessage: lorem(paragraphs: 1, words: 10),
          userLatestSendTime: DateFormat("HH:mm").format(
            DateTime.now().add(
              Duration(
                hours: Random().nextInt(30),
              ),
            ),
          ),
          userName: lorem(paragraphs: 1, words: 2),
          userStatus: Random().nextInt(100) % 3 == 0
              ? UserStatus.online
              : Random().nextInt(100) % 3 == 1
                  ? UserStatus.offline
                  : UserStatus.busy,
          userTyping: Random().nextInt(100) > 50 ? true : false,
          messageType:
              Random().nextBool() ? MessageType.formMe : MessageType.formOther);
      messageMap.putIfAbsent(
          userMessageDto.id.toString(), () => userMessageDto);
    }
    emit(MessageState(messageMap));
  }
}
