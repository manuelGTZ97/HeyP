import 'package:freezed_annotation/freezed_annotation.dart';

import 'feed.dart';

part 'detail_post.freezed.dart';
part 'detail_post.g.dart';

@freezed
abstract class DetailPost with _$DetailPost {
  const factory DetailPost({
    bool success,
    @nullable String message,
    @nullable Feed post,
  }) = _DetailPost;
  static const fromJsonFactory = _$DetailPostFromJson;
  factory DetailPost.fromJson(Map<String, dynamic> json) =>
      _$DetailPostFromJson(json);
}
