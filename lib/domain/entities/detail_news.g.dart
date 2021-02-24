// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailNews _$_$_DetailNewsFromJson(Map<String, dynamic> json) {
  return _$_DetailNews(
    success: json['success'] as bool,
    message: json['message'] as String,
    news: (json['news'] as List)
        ?.map(
            (e) => e == null ? null : News.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DetailNewsToJson(_$_DetailNews instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'news': instance.news,
    };
