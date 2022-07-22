// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDto _$PlaceDtoFromJson(Map<String, dynamic> json) => PlaceDto(
      id: json['id'],
      placeViewImage: (json['placeViewImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      placeDescription: json['placeDescription'] as String?,
      placeUrl: json['placeUrl'],
      placeTag: json['placeTag'],
      placeTitle: json['placeTitle'],
      placeStar: json['placeStar'],
      placeLocation: json['placeLocation'],
      placeCountLike: json['placeCountLike'],
      placeSchedule: json['placeSchedule'],
    );

Map<String, dynamic> _$PlaceDtoToJson(PlaceDto instance) => <String, dynamic>{
      'id': instance.id,
      'placeUrl': instance.placeUrl,
      'placeTag': instance.placeTag,
      'placeTitle': instance.placeTitle,
      'placeStar': instance.placeStar,
      'placeLocation': instance.placeLocation,
      'placeCountLike': instance.placeCountLike,
      'placeSchedule': instance.placeSchedule?.toIso8601String(),
      'placeViewImage': instance.placeViewImage,
      'placeDescription': instance.placeDescription,
    };
