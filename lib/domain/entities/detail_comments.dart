import 'package:freezed_annotation/freezed_annotation.dart';

import 'comment.dart';

part 'detail_comments.freezed.dart';
part 'detail_comments.g.dart';

@freezed
abstract class DetailComments with _$DetailComments {
  const factory DetailComments({
    bool success,
    @nullable String message,
    @nullable List<Comment> comments,
  }) = _DetailComments;
  static const fromJsonFactory = _$DetailCommentsFromJson;
  factory DetailComments.fromJson(Map<String, dynamic> json) =>
      _$DetailCommentsFromJson(json);
}
