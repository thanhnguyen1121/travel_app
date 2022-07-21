abstract class PlaceModel {
  int id;
  String? placeUrl;
  bool? placeTag;
  String? placeTitle;
  double? placeStar;
  String? placeLocation;
  int? placeCountLike;

  PlaceModel(
      {required this.id,
      this.placeUrl,
      this.placeTag,
      this.placeTitle,
      this.placeStar,
      this.placeLocation,
      this.placeCountLike});
}
