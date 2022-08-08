abstract class UserModel {
  String? userName;
  String? userAvatar;
  String? userEmail;
  int? userRewardPoint;
  int? userTravelTrips;
  int? bucketList;

  UserModel(this.userName, this.userAvatar, this.userEmail,
      this.userRewardPoint, this.userTravelTrips, this.bucketList);
}
