// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      userName: json['userName'] as String?,
      userAvatar: json['userAvatar'] as String?,
      userEmail: json['userEmail'] as String?,
      userRewardPoint: json['userRewardPoint'] as int?,
      userTravelTrips: json['userTravelTrips'] as int?,
      bucketList: json['bucketList'] as int?,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'userName': instance.userName,
      'userAvatar': instance.userAvatar,
      'userEmail': instance.userEmail,
      'userRewardPoint': instance.userRewardPoint,
      'userTravelTrips': instance.userTravelTrips,
      'bucketList': instance.bucketList,
    };
