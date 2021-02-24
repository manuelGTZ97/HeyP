import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
abstract class News with _$News {
  const factory News({
    int id,
    @nullable String title,
    @nullable String body,
    @nullable String image,
    @nullable String date,
  }) = _News;
  static const fromJsonFactory = _$NewsFromJson;
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
