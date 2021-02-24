// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_comments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DetailComments _$DetailCommentsFromJson(Map<String, dynamic> json) {
  return _DetailComments.fromJson(json);
}

/// @nodoc
class _$DetailCommentsTearOff {
  const _$DetailCommentsTearOff();

// ignore: unused_element
  _DetailComments call(
      {bool success,
      @nullable String message,
      @nullable List<Comment> comments}) {
    return _DetailComments(
      success: success,
      message: message,
      comments: comments,
    );
  }

// ignore: unused_element
  DetailComments fromJson(Map<String, Object> json) {
    return DetailComments.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DetailComments = _$DetailCommentsTearOff();

/// @nodoc
mixin _$DetailComments {
  bool get success;
  @nullable
  String get message;
  @nullable
  List<Comment> get comments;

  Map<String, dynamic> toJson();
  $DetailCommentsCopyWith<DetailComments> get copyWith;
}

/// @nodoc
abstract class $DetailCommentsCopyWith<$Res> {
  factory $DetailCommentsCopyWith(
          DetailComments value, $Res Function(DetailComments) then) =
      _$DetailCommentsCopyWithImpl<$Res>;
  $Res call(
      {bool success,
      @nullable String message,
      @nullable List<Comment> comments});
}

/// @nodoc
class _$DetailCommentsCopyWithImpl<$Res>
    implements $DetailCommentsCopyWith<$Res> {
  _$DetailCommentsCopyWithImpl(this._value, this._then);

  final DetailComments _value;
  // ignore: unused_field
  final $Res Function(DetailComments) _then;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object comments = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      comments:
          comments == freezed ? _value.comments : comments as List<Comment>,
    ));
  }
}

/// @nodoc
abstract class _$DetailCommentsCopyWith<$Res>
    implements $DetailCommentsCopyWith<$Res> {
  factory _$DetailCommentsCopyWith(
          _DetailComments value, $Res Function(_DetailComments) then) =
      __$DetailCommentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success,
      @nullable String message,
      @nullable List<Comment> comments});
}

/// @nodoc
class __$DetailCommentsCopyWithImpl<$Res>
    extends _$DetailCommentsCopyWithImpl<$Res>
    implements _$DetailCommentsCopyWith<$Res> {
  __$DetailCommentsCopyWithImpl(
      _DetailComments _value, $Res Function(_DetailComments) _then)
      : super(_value, (v) => _then(v as _DetailComments));

  @override
  _DetailComments get _value => super._value as _DetailComments;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object comments = freezed,
  }) {
    return _then(_DetailComments(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      comments:
          comments == freezed ? _value.comments : comments as List<Comment>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DetailComments implements _DetailComments {
  const _$_DetailComments(
      {this.success, @nullable this.message, @nullable this.comments});

  factory _$_DetailComments.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailCommentsFromJson(json);

  @override
  final bool success;
  @override
  @nullable
  final String message;
  @override
  @nullable
  final List<Comment> comments;

  @override
  String toString() {
    return 'DetailComments(success: $success, message: $message, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailComments &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(comments);

  @override
  _$DetailCommentsCopyWith<_DetailComments> get copyWith =>
      __$DetailCommentsCopyWithImpl<_DetailComments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailCommentsToJson(this);
  }
}

abstract class _DetailComments implements DetailComments {
  const factory _DetailComments(
      {bool success,
      @nullable String message,
      @nullable List<Comment> comments}) = _$_DetailComments;

  factory _DetailComments.fromJson(Map<String, dynamic> json) =
      _$_DetailComments.fromJson;

  @override
  bool get success;
  @override
  @nullable
  String get message;
  @override
  @nullable
  List<Comment> get comments;
  @override
  _$DetailCommentsCopyWith<_DetailComments> get copyWith;
}
