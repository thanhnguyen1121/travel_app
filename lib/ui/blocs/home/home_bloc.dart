import 'dart:math';

import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/data/dto/place_dto.dart';
import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:flutter_application/ui/blocs/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(const HomeState.loading());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    Map<String, PlaceModel> placeMap = {};
    for (int i = 0; i < 10; i++) {
      PlaceDto placeDto = PlaceDto(
        id: i,
        placeDescription: lorem(paragraphs: 4, words: 100),
        placeViewImage: AppImages.imageList.take(Random().nextInt(16)).toList(),
        placeCountLike: Random().nextInt(100),
        placeLocation: lorem(paragraphs: 1, words: 10),
        placeStar: Random().nextInt(4) + Random().nextDouble(),
        placeTag: Random().nextBool(),
        placeTitle: lorem(paragraphs: 1, words: 10),
        placeUrl: AppImages.imageList[Random().nextInt(15)],
      );
      placeMap.putIfAbsent(placeDto.id.toString(), () => placeDto);
    }

    emit(HomeStateData(placeMap));
  }
}
