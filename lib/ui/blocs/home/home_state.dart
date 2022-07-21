import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState(Map<String, PlaceModel> placeState) = HomeStateData;

  const factory HomeState.loading() = HomeStateLoading;

  const factory HomeState.error(dynamic error) = HomeStateError;
}
