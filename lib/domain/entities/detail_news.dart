import 'package:freezed_annotation/freezed_annotation.dart';

import 'news.dart';

part 'detail_news.freezed.dart';
part 'detail_news.g.dart';

@freezed
abstract class DetailNews with _$DetailNews {
  const factory DetailNews({
    bool success,
    @nullable String message,
    @nullable List<News> news,
  }) = _DetailNews;
  static const fromJsonFactory = _$DetailNewsFromJson;
  factory DetailNews.fromJson(Map<String, dynamic> json) =>
      _$DetailNewsFromJson(json);
}
