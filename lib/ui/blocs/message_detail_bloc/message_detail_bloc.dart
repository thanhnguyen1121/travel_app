import 'dart:math';

import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/constants/app_enum.dart';
import 'package:flutter_application/data/dto/message_dto.dart';
import 'package:flutter_application/domain/entity/message_model.dart';
import 'package:flutter_application/ui/blocs/message_detail_bloc/message_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:intl/intl.dart';

class MessageDetailBloc extends Cubit<MessageDetailState> {
  MessageDetailBloc() : super(const MessageDetailState.loading());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    Map<String, List<MessageModel>> messageMap = {};
    List<MessageModel> messageList = [];
    for (int i = 0; i < 10; i++) {
      MessageDto messageDto = MessageDto(
          id: i + 1,
          message: lorem(paragraphs: 1, words: Random().nextInt(50)),
          messageType:
              Random().nextBool() ? MessageType.formMe : MessageType.formOther,
          timeSent: DateFormat("HH:mm").format(
            DateTime.now().add(
              Duration(
                hours: Random().nextInt(100),
              ),
            ),
          ),
          messageSendStatus:
              i == 9 ? MessageSendStatus.received : MessageSendStatus.read,
          userAvatar: AppUserImage.imageList[Random().nextInt(3)]);
      messageList.add(messageDto);
    }

    messageMap = groupData(messageList);
    emit(MessageDetailState(messageMap));
  }

  Map<String, List<MessageModel>> groupData(List<MessageModel> map) {
    Map<String, List<MessageModel>> result = {};
    int key = 1;
    while (map.isNotEmpty) {
      int count = 1;
      for (int i = 0; i < map.length; i++) {
        if (i + 1 < map.length &&
            map[i].messageType == map[i + 1].messageType) {
          count++;
        } else {
          break;
        }
      }
      result.putIfAbsent(key.toString(), () => map.sublist(0, count));
      key++;

      map = map.sublist(count, map.length);
    }
    return result;
  }
}
