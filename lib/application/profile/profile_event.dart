part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserPosts(int id) = GetUserPosts;
  const factory ProfileEvent.getUserinfo(int id) = GetUserinfo;
  const factory ProfileEvent.followUser(int id) = FollowUser;
}
