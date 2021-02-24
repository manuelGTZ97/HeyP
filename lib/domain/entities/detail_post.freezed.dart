// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DetailPost _$DetailPostFromJson(Map<String, dynamic> json) {
  return _DetailPost.fromJson(json);
}

/// @nodoc
class _$DetailPostTearOff {
  const _$DetailPostTearOff();

// ignore: unused_element
  _DetailPost call(
      {bool success, @nullable String message, @nullable Feed post}) {
    return _DetailPost(
      success: success,
      message: message,
      post: post,
    );
  }

// ignore: unused_element
  DetailPost fromJson(Map<String, Object> json) {
    return DetailPost.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DetailPost = _$DetailPostTearOff();

/// @nodoc
mixin _$DetailPost {
  bool get success;
  @nullable
  String get message;
  @nullable
  Feed get post;

  Map<String, dynamic> toJson();
  $DetailPostCopyWith<DetailPost> get copyWith;
}

/// @nodoc
abstract class $DetailPostCopyWith<$Res> {
  factory $DetailPostCopyWith(
          DetailPost value, $Res Function(DetailPost) then) =
      _$DetailPostCopyWithImpl<$Res>;
  $Res call({bool success, @nullable String message, @nullable Feed post});

  $FeedCopyWith<$Res> get post;
}

/// @nodoc
class _$DetailPostCopyWithImpl<$Res> implements $DetailPostCopyWith<$Res> {
  _$DetailPostCopyWithImpl(this._value, this._then);

  final DetailPost _value;
  // ignore: unused_field
  final $Res Function(DetailPost) _then;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object post = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      post: post == freezed ? _value.post : post as Feed,
    ));
  }

  @override
  $FeedCopyWith<$Res> get post {
    if (_value.post == null) {
      return null;
    }
    return $FeedCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc
abstract class _$DetailPostCopyWith<$Res> implements $DetailPostCopyWith<$Res> {
  factory _$DetailPostCopyWith(
          _DetailPost value, $Res Function(_DetailPost) then) =
      __$DetailPostCopyWithImpl<$Res>;
  @override
  $Res call({bool success, @nullable String message, @nullable Feed post});

  @override
  $FeedCopyWith<$Res> get post;
}

/// @nodoc
class __$DetailPostCopyWithImpl<$Res> extends _$DetailPostCopyWithImpl<$Res>
    implements _$DetailPostCopyWith<$Res> {
  __$DetailPostCopyWithImpl(
      _DetailPost _value, $Res Function(_DetailPost) _then)
      : super(_value, (v) => _then(v as _DetailPost));

  @override
  _DetailPost get _value => super._value as _DetailPost;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object post = freezed,
  }) {
    return _then(_DetailPost(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      post: post == freezed ? _value.post : post as Feed,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DetailPost implements _DetailPost {
  const _$_DetailPost(
      {this.success, @nullable this.message, @nullable this.post});

  factory _$_DetailPost.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailPostFromJson(json);

  @override
  final bool success;
  @override
  @nullable
  final String message;
  @override
  @nullable
  final Feed post;

  @override
  String toString() {
    return 'DetailPost(success: $success, message: $message, post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailPost &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(post);

  @override
  _$DetailPostCopyWith<_DetailPost> get copyWith =>
      __$DetailPostCopyWithImpl<_DetailPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailPostToJson(this);
  }
}

abstract class _DetailPost implements DetailPost {
  const factory _DetailPost(
      {bool success,
      @nullable String message,
      @nullable Feed post}) = _$_DetailPost;

  factory _DetailPost.fromJson(Map<String, dynamic> json) =
      _$_DetailPost.fromJson;

  @override
  bool get success;
  @override
  @nullable
  String get message;
  @override
  @nullable
  Feed get post;
  @override
  _$DetailPostCopyWith<_DetailPost> get copyWith;
}
