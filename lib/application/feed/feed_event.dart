part of 'feed_bloc.dart';

@freezed
abstract class FeedEvent with _$FeedEvent {
  const factory FeedEvent.getUserFeeds(int offset) = GetUserFeeds;
  const factory FeedEvent.getFeeds(int offset) = GetFeeds;
  const factory FeedEvent.getPosts(int userId) = GetPosts;
}
