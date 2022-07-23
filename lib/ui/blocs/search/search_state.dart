import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState(
      Map<String, PlaceModel> placeMap, bool inSideLoading) = SearchStateData;

  const factory SearchState.loading() = SearchStateLoading;

  const factory SearchState.error(dynamic error) = SearchStateError;
}
