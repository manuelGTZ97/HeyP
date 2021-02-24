import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

@freezed
abstract class Feed with _$Feed {
  const factory Feed({
    int id,
    @nullable String image,
    @nullable String body,
    @nullable String date,
    @nullable User user,
    @nullable int likes,
    @nullable int liked,
    @nullable int comments,
  }) = _Feed;
  static const fromJsonFactory = _$FeedFromJson;
  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
