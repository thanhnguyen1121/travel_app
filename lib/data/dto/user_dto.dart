import 'package:flutter_application/domain/entity/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto extends UserModel {
  UserDto({
    String? userName,
    String? userAvatar,
    String? userEmail,
    int? userRewardPoint,
    int? userTravelTrips,
    int? bucketList,
  }) : super(userName, userAvatar, userEmail, userRewardPoint, userTravelTrips,
            bucketList);

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
