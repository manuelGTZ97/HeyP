// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
class _$NotificationTearOff {
  const _$NotificationTearOff();

// ignore: unused_element
  _Notification call(
      {int id,
      @nullable int type,
      @nullable int seen,
      @nullable String date,
      @nullable @JsonKey(name: 'post_id') int postId,
      @nullable User sender,
      @nullable User receiver}) {
    return _Notification(
      id: id,
      type: type,
      seen: seen,
      date: date,
      postId: postId,
      sender: sender,
      receiver: receiver,
    );
  }

// ignore: unused_element
  Notification fromJson(Map<String, Object> json) {
    return Notification.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Notification = _$NotificationTearOff();

/// @nodoc
mixin _$Notification {
  int get id;
  @nullable
  int get type;
  @nullable
  int get seen;
  @nullable
  String get date;
  @nullable
  @JsonKey(name: 'post_id')
  int get postId;
  @nullable
  User get sender;
  @nullable
  User get receiver;

  Map<String, dynamic> toJson();
  $NotificationCopyWith<Notification> get copyWith;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable int type,
      @nullable int seen,
      @nullable String date,
      @nullable @JsonKey(name: 'post_id') int postId,
      @nullable User sender,
      @nullable User receiver});

  $UserCopyWith<$Res> get sender;
  $UserCopyWith<$Res> get receiver;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object seen = freezed,
    Object date = freezed,
    Object postId = freezed,
    Object sender = freezed,
    Object receiver = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      type: type == freezed ? _value.type : type as int,
      seen: seen == freezed ? _value.seen : seen as int,
      date: date == freezed ? _value.date : date as String,
      postId: postId == freezed ? _value.postId : postId as int,
      sender: sender == freezed ? _value.sender : sender as User,
      receiver: receiver == freezed ? _value.receiver : receiver as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get sender {
    if (_value.sender == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $UserCopyWith<$Res> get receiver {
    if (_value.receiver == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(
          _Notification value, $Res Function(_Notification) then) =
      __$NotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable int type,
      @nullable int seen,
      @nullable String date,
      @nullable @JsonKey(name: 'post_id') int postId,
      @nullable User sender,
      @nullable User receiver});

  @override
  $UserCopyWith<$Res> get sender;
  @override
  $UserCopyWith<$Res> get receiver;
}

/// @nodoc
class __$NotificationCopyWithImpl<$Res> extends _$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(
      _Notification _value, $Res Function(_Notification) _then)
      : super(_value, (v) => _then(v as _Notification));

  @override
  _Notification get _value => super._value as _Notification;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object seen = freezed,
    Object date = freezed,
    Object postId = freezed,
    Object sender = freezed,
    Object receiver = freezed,
  }) {
    return _then(_Notification(
      id: id == freezed ? _value.id : id as int,
      type: type == freezed ? _value.type : type as int,
      seen: seen == freezed ? _value.seen : seen as int,
      date: date == freezed ? _value.date : date as String,
      postId: postId == freezed ? _value.postId : postId as int,
      sender: sender == freezed ? _value.sender : sender as User,
      receiver: receiver == freezed ? _value.receiver : receiver as User,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Notification implements _Notification {
  const _$_Notification(
      {this.id,
      @nullable this.type,
      @nullable this.seen,
      @nullable this.date,
      @nullable @JsonKey(name: 'post_id') this.postId,
      @nullable this.sender,
      @nullable this.receiver});

  factory _$_Notification.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationFromJson(json);

  @override
  final int id;
  @override
  @nullable
  final int type;
  @override
  @nullable
  final int seen;
  @override
  @nullable
  final String date;
  @override
  @nullable
  @JsonKey(name: 'post_id')
  final int postId;
  @override
  @nullable
  final User sender;
  @override
  @nullable
  final User receiver;

  @override
  String toString() {
    return 'Notification(id: $id, type: $type, seen: $seen, date: $date, postId: $postId, sender: $sender, receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.seen, seen) ||
                const DeepCollectionEquality().equals(other.seen, seen)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.receiver, receiver) ||
                const DeepCollectionEquality()
                    .equals(other.receiver, receiver)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(seen) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(receiver);

  @override
  _$NotificationCopyWith<_Notification> get copyWith =>
      __$NotificationCopyWithImpl<_Notification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationToJson(this);
  }
}

abstract class _Notification implements Notification {
  const factory _Notification(
      {int id,
      @nullable int type,
      @nullable int seen,
      @nullable String date,
      @nullable @JsonKey(name: 'post_id') int postId,
      @nullable User sender,
      @nullable User receiver}) = _$_Notification;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$_Notification.fromJson;

  @override
  int get id;
  @override
  @nullable
  int get type;
  @override
  @nullable
  int get seen;
  @override
  @nullable
  String get date;
  @override
  @nullable
  @JsonKey(name: 'post_id')
  int get postId;
  @override
  @nullable
  User get sender;
  @override
  @nullable
  User get receiver;
  @override
  _$NotificationCopyWith<_Notification> get copyWith;
}
