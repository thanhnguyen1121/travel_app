import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_state.freezed.dart';

@freezed
abstract class CalendarState with _$CalendarState {
  const factory CalendarState(Map<String, PlaceModel> placeList) =
      CalendarStateData;

  const factory CalendarState.loading() = CalendarStateLoading;

  const factory CalendarState.error(dynamic error) = CalendarStateError;
}
