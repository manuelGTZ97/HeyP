// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DetailNews _$DetailNewsFromJson(Map<String, dynamic> json) {
  return _DetailNews.fromJson(json);
}

/// @nodoc
class _$DetailNewsTearOff {
  const _$DetailNewsTearOff();

// ignore: unused_element
  _DetailNews call(
      {bool success, @nullable String message, @nullable List<News> news}) {
    return _DetailNews(
      success: success,
      message: message,
      news: news,
    );
  }

// ignore: unused_element
  DetailNews fromJson(Map<String, Object> json) {
    return DetailNews.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DetailNews = _$DetailNewsTearOff();

/// @nodoc
mixin _$DetailNews {
  bool get success;
  @nullable
  String get message;
  @nullable
  List<News> get news;

  Map<String, dynamic> toJson();
  $DetailNewsCopyWith<DetailNews> get copyWith;
}

/// @nodoc
abstract class $DetailNewsCopyWith<$Res> {
  factory $DetailNewsCopyWith(
          DetailNews value, $Res Function(DetailNews) then) =
      _$DetailNewsCopyWithImpl<$Res>;
  $Res call(
      {bool success, @nullable String message, @nullable List<News> news});
}

/// @nodoc
class _$DetailNewsCopyWithImpl<$Res> implements $DetailNewsCopyWith<$Res> {
  _$DetailNewsCopyWithImpl(this._value, this._then);

  final DetailNews _value;
  // ignore: unused_field
  final $Res Function(DetailNews) _then;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object news = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      news: news == freezed ? _value.news : news as List<News>,
    ));
  }
}

/// @nodoc
abstract class _$DetailNewsCopyWith<$Res> implements $DetailNewsCopyWith<$Res> {
  factory _$DetailNewsCopyWith(
          _DetailNews value, $Res Function(_DetailNews) then) =
      __$DetailNewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success, @nullable String message, @nullable List<News> news});
}

/// @nodoc
class __$DetailNewsCopyWithImpl<$Res> extends _$DetailNewsCopyWithImpl<$Res>
    implements _$DetailNewsCopyWith<$Res> {
  __$DetailNewsCopyWithImpl(
      _DetailNews _value, $Res Function(_DetailNews) _then)
      : super(_value, (v) => _then(v as _DetailNews));

  @override
  _DetailNews get _value => super._value as _DetailNews;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object news = freezed,
  }) {
    return _then(_DetailNews(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      news: news == freezed ? _value.news : news as List<News>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DetailNews implements _DetailNews {
  const _$_DetailNews(
      {this.success, @nullable this.message, @nullable this.news});

  factory _$_DetailNews.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailNewsFromJson(json);

  @override
  final bool success;
  @override
  @nullable
  final String message;
  @override
  @nullable
  final List<News> news;

  @override
  String toString() {
    return 'DetailNews(success: $success, message: $message, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailNews &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(news);

  @override
  _$DetailNewsCopyWith<_DetailNews> get copyWith =>
      __$DetailNewsCopyWithImpl<_DetailNews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailNewsToJson(this);
  }
}

abstract class _DetailNews implements DetailNews {
  const factory _DetailNews(
      {bool success,
      @nullable String message,
      @nullable List<News> news}) = _$_DetailNews;

  factory _DetailNews.fromJson(Map<String, dynamic> json) =
      _$_DetailNews.fromJson;

  @override
  bool get success;
  @override
  @nullable
  String get message;
  @override
  @nullable
  List<News> get news;
  @override
  _$DetailNewsCopyWith<_DetailNews> get copyWith;
}
