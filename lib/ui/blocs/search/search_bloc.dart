import 'dart:math';

import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/data/dto/place_dto.dart';
import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:flutter_application/ui/blocs/search/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class SearchBloc extends Cubit<SearchState> {
  SearchBloc() : super(const SearchState.loading());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    Map<String, PlaceModel> placeMap = {};
    for (int i = 21; i < 31; i++) {
      final place = PlaceDto(
        id: i + 1,
        placeDescription: lorem(paragraphs: 4, words: 100),
        placeViewImage: AppImages.imageList.take(Random().nextInt(16)).toList(),
        placeCountLike: Random().nextInt(100),
        placeLocation: lorem(paragraphs: 1, words: 10),
        placeStar: Random().nextInt(4) + Random().nextDouble(),
        placeTag: Random().nextBool(),
        placeTitle: lorem(paragraphs: 1, words: 10),
        placeSchedule: DateTime.now(),
        placeUrl: AppImages.imageList[Random().nextInt(15)],
      );
      placeMap.putIfAbsent(place.id.toString(), () => place);
    }
    emit(SearchState(placeMap, false));
  }

  Future<void> searchWithKeyWord({required String keyWord}) async {
    state.maybeWhen(
      (placeMap, inSideLoading) => emit(SearchState(placeMap, true)),
      orElse: () => emit(
        const SearchState({}, true),
      ),
    );
    await Future.delayed(const Duration(seconds: 2));
    Map<String, PlaceModel> placeMap = {};
    for (int i = 21; i < 31; i++) {
      final place = PlaceDto(
        id: i + 1,
        placeDescription: lorem(paragraphs: 4, words: 100),
        placeViewImage: AppImages.imageList.take(Random().nextInt(16)).toList(),
        placeCountLike: Random().nextInt(100),
        placeLocation: lorem(paragraphs: 1, words: 10),
        placeStar: Random().nextInt(4) + Random().nextDouble(),
        placeTag: Random().nextBool(),
        placeTitle: keyWord + " " + lorem(paragraphs: 1, words: 10),
        placeSchedule: DateTime.now(),
        placeUrl: AppImages.imageList[Random().nextInt(15)],
      );
      placeMap.putIfAbsent(place.id.toString(), () => place);
    }
    emit(SearchState(placeMap, false));
  }
}
