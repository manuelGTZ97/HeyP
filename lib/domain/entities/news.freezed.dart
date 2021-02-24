// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
class _$NewsTearOff {
  const _$NewsTearOff();

// ignore: unused_element
  _News call(
      {int id,
      @nullable String title,
      @nullable String body,
      @nullable String image,
      @nullable String date}) {
    return _News(
      id: id,
      title: title,
      body: body,
      image: image,
      date: date,
    );
  }

// ignore: unused_element
  News fromJson(Map<String, Object> json) {
    return News.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $News = _$NewsTearOff();

/// @nodoc
mixin _$News {
  int get id;
  @nullable
  String get title;
  @nullable
  String get body;
  @nullable
  String get image;
  @nullable
  String get date;

  Map<String, dynamic> toJson();
  $NewsCopyWith<News> get copyWith;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable String title,
      @nullable String body,
      @nullable String image,
      @nullable String date});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object body = freezed,
    Object image = freezed,
    Object date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      image: image == freezed ? _value.image : image as String,
      date: date == freezed ? _value.date : date as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable String title,
      @nullable String body,
      @nullable String image,
      @nullable String date});
}

/// @nodoc
class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object body = freezed,
    Object image = freezed,
    Object date = freezed,
  }) {
    return _then(_News(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      image: image == freezed ? _value.image : image as String,
      date: date == freezed ? _value.date : date as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_News implements _News {
  const _$_News(
      {this.id,
      @nullable this.title,
      @nullable this.body,
      @nullable this.image,
      @nullable this.date});

  factory _$_News.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsFromJson(json);

  @override
  final int id;
  @override
  @nullable
  final String title;
  @override
  @nullable
  final String body;
  @override
  @nullable
  final String image;
  @override
  @nullable
  final String date;

  @override
  String toString() {
    return 'News(id: $id, title: $title, body: $body, image: $image, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _News &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(date);

  @override
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsToJson(this);
  }
}

abstract class _News implements News {
  const factory _News(
      {int id,
      @nullable String title,
      @nullable String body,
      @nullable String image,
      @nullable String date}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  int get id;
  @override
  @nullable
  String get title;
  @override
  @nullable
  String get body;
  @override
  @nullable
  String get image;
  @override
  @nullable
  String get date;
  @override
  _$NewsCopyWith<_News> get copyWith;
}
