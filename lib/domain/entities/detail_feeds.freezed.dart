// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_feeds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DetailFeeds _$DetailFeedsFromJson(Map<String, dynamic> json) {
  return _DetailFeeds.fromJson(json);
}

/// @nodoc
class _$DetailFeedsTearOff {
  const _$DetailFeedsTearOff();

// ignore: unused_element
  _DetailFeeds call(
      {bool success, @nullable String message, @nullable List<Feed> feeds}) {
    return _DetailFeeds(
      success: success,
      message: message,
      feeds: feeds,
    );
  }

// ignore: unused_element
  DetailFeeds fromJson(Map<String, Object> json) {
    return DetailFeeds.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DetailFeeds = _$DetailFeedsTearOff();

/// @nodoc
mixin _$DetailFeeds {
  bool get success;
  @nullable
  String get message;
  @nullable
  List<Feed> get feeds;

  Map<String, dynamic> toJson();
  $DetailFeedsCopyWith<DetailFeeds> get copyWith;
}

/// @nodoc
abstract class $DetailFeedsCopyWith<$Res> {
  factory $DetailFeedsCopyWith(
          DetailFeeds value, $Res Function(DetailFeeds) then) =
      _$DetailFeedsCopyWithImpl<$Res>;
  $Res call(
      {bool success, @nullable String message, @nullable List<Feed> feeds});
}

/// @nodoc
class _$DetailFeedsCopyWithImpl<$Res> implements $DetailFeedsCopyWith<$Res> {
  _$DetailFeedsCopyWithImpl(this._value, this._then);

  final DetailFeeds _value;
  // ignore: unused_field
  final $Res Function(DetailFeeds) _then;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object feeds = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      feeds: feeds == freezed ? _value.feeds : feeds as List<Feed>,
    ));
  }
}

/// @nodoc
abstract class _$DetailFeedsCopyWith<$Res>
    implements $DetailFeedsCopyWith<$Res> {
  factory _$DetailFeedsCopyWith(
          _DetailFeeds value, $Res Function(_DetailFeeds) then) =
      __$DetailFeedsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success, @nullable String message, @nullable List<Feed> feeds});
}

/// @nodoc
class __$DetailFeedsCopyWithImpl<$Res> extends _$DetailFeedsCopyWithImpl<$Res>
    implements _$DetailFeedsCopyWith<$Res> {
  __$DetailFeedsCopyWithImpl(
      _DetailFeeds _value, $Res Function(_DetailFeeds) _then)
      : super(_value, (v) => _then(v as _DetailFeeds));

  @override
  _DetailFeeds get _value => super._value as _DetailFeeds;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object feeds = freezed,
  }) {
    return _then(_DetailFeeds(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      feeds: feeds == freezed ? _value.feeds : feeds as List<Feed>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DetailFeeds with DiagnosticableTreeMixin implements _DetailFeeds {
  const _$_DetailFeeds(
      {this.success, @nullable this.message, @nullable this.feeds});

  factory _$_DetailFeeds.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailFeedsFromJson(json);

  @override
  final bool success;
  @override
  @nullable
  final String message;
  @override
  @nullable
  final List<Feed> feeds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailFeeds(success: $success, message: $message, feeds: $feeds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailFeeds'))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('feeds', feeds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailFeeds &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.feeds, feeds) ||
                const DeepCollectionEquality().equals(other.feeds, feeds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(feeds);

  @override
  _$DetailFeedsCopyWith<_DetailFeeds> get copyWith =>
      __$DetailFeedsCopyWithImpl<_DetailFeeds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailFeedsToJson(this);
  }
}

abstract class _DetailFeeds implements DetailFeeds {
  const factory _DetailFeeds(
      {bool success,
      @nullable String message,
      @nullable List<Feed> feeds}) = _$_DetailFeeds;

  factory _DetailFeeds.fromJson(Map<String, dynamic> json) =
      _$_DetailFeeds.fromJson;

  @override
  bool get success;
  @override
  @nullable
  String get message;
  @override
  @nullable
  List<Feed> get feeds;
  @override
  _$DetailFeedsCopyWith<_DetailFeeds> get copyWith;
}
