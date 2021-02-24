import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
abstract class Comment with _$Comment {
  const factory Comment({
    int id,
    @nullable String comment,
    @nullable String date,
    @nullable User user,
  }) = _Comment;
  static const fromJsonFactory = _$CommentFromJson;
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
