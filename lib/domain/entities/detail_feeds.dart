import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'feed.dart';

part 'detail_feeds.freezed.dart';
part 'detail_feeds.g.dart';

@freezed
abstract class DetailFeeds with _$DetailFeeds {
  const factory DetailFeeds({
    bool success,
    @nullable String message,
    @nullable List<Feed> feeds,
  }) = _DetailFeeds;
  static const fromJsonFactory = _$DetailFeedsFromJson;
  factory DetailFeeds.fromJson(Map<String, dynamic> json) =>
      _$DetailFeedsFromJson(json);
}
