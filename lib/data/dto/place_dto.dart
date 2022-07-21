import 'package:flutter_application/domain/entity/place_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class PlaceDto extends PlaceModel {
  List<String>? placeViewImage;

  String? placeDescription;

  PlaceDto({
    required id,
    this.placeViewImage,
    this.placeDescription,
    placeUrl,
    placeTag,
    placeTitle,
    placeStar,
    placeLocation,
    placeCountLike,
  }) : super(
            id: id,
            placeUrl: placeUrl,
            placeTag: placeTag,
            placeTitle: placeTitle,
            placeStar: placeStar,
            placeLocation: placeLocation,
            placeCountLike: placeCountLike);

  factory PlaceDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceDtoToJson(this);
}
