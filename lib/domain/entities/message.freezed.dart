// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

// ignore: unused_element
  _Message call(
      {int id,
      @nullable String message,
      @nullable @JsonKey(name: 'sender_id') int senderId,
      @nullable @JsonKey(name: 'receiver_id') int receiverId,
      @nullable @JsonKey(name: 'created_at') String date,
      @nullable User sender,
      @nullable User receiver}) {
    return _Message(
      id: id,
      message: message,
      senderId: senderId,
      receiverId: receiverId,
      date: date,
      sender: sender,
      receiver: receiver,
    );
  }

// ignore: unused_element
  Message fromJson(Map<String, Object> json) {
    return Message.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  int get id;
  @nullable
  String get message;
  @nullable
  @JsonKey(name: 'sender_id')
  int get senderId;
  @nullable
  @JsonKey(name: 'receiver_id')
  int get receiverId;
  @nullable
  @JsonKey(name: 'created_at')
  String get date;
  @nullable
  User get sender;
  @nullable
  User get receiver;

  Map<String, dynamic> toJson();
  $MessageCopyWith<Message> get copyWith;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable String message,
      @nullable @JsonKey(name: 'sender_id') int senderId,
      @nullable @JsonKey(name: 'receiver_id') int receiverId,
      @nullable @JsonKey(name: 'created_at') String date,
      @nullable User sender,
      @nullable User receiver});

  $UserCopyWith<$Res> get sender;
  $UserCopyWith<$Res> get receiver;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object id = freezed,
    Object message = freezed,
    Object senderId = freezed,
    Object receiverId = freezed,
    Object date = freezed,
    Object sender = freezed,
    Object receiver = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      message: message == freezed ? _value.message : message as String,
      senderId: senderId == freezed ? _value.senderId : senderId as int,
      receiverId: receiverId == freezed ? _value.receiverId : receiverId as int,
      date: date == freezed ? _value.date : date as String,
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
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable String message,
      @nullable @JsonKey(name: 'sender_id') int senderId,
      @nullable @JsonKey(name: 'receiver_id') int receiverId,
      @nullable @JsonKey(name: 'created_at') String date,
      @nullable User sender,
      @nullable User receiver});

  @override
  $UserCopyWith<$Res> get sender;
  @override
  $UserCopyWith<$Res> get receiver;
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object id = freezed,
    Object message = freezed,
    Object senderId = freezed,
    Object receiverId = freezed,
    Object date = freezed,
    Object sender = freezed,
    Object receiver = freezed,
  }) {
    return _then(_Message(
      id: id == freezed ? _value.id : id as int,
      message: message == freezed ? _value.message : message as String,
      senderId: senderId == freezed ? _value.senderId : senderId as int,
      receiverId: receiverId == freezed ? _value.receiverId : receiverId as int,
      date: date == freezed ? _value.date : date as String,
      sender: sender == freezed ? _value.sender : sender as User,
      receiver: receiver == freezed ? _value.receiver : receiver as User,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Message implements _Message {
  const _$_Message(
      {this.id,
      @nullable this.message,
      @nullable @JsonKey(name: 'sender_id') this.senderId,
      @nullable @JsonKey(name: 'receiver_id') this.receiverId,
      @nullable @JsonKey(name: 'created_at') this.date,
      @nullable this.sender,
      @nullable this.receiver});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageFromJson(json);

  @override
  final int id;
  @override
  @nullable
  final String message;
  @override
  @nullable
  @JsonKey(name: 'sender_id')
  final int senderId;
  @override
  @nullable
  @JsonKey(name: 'receiver_id')
  final int receiverId;
  @override
  @nullable
  @JsonKey(name: 'created_at')
  final String date;
  @override
  @nullable
  final User sender;
  @override
  @nullable
  final User receiver;

  @override
  String toString() {
    return 'Message(id: $id, message: $message, senderId: $senderId, receiverId: $receiverId, date: $date, sender: $sender, receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
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
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(receiver);

  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {int id,
      @nullable String message,
      @nullable @JsonKey(name: 'sender_id') int senderId,
      @nullable @JsonKey(name: 'receiver_id') int receiverId,
      @nullable @JsonKey(name: 'created_at') String date,
      @nullable User sender,
      @nullable User receiver}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  int get id;
  @override
  @nullable
  String get message;
  @override
  @nullable
  @JsonKey(name: 'sender_id')
  int get senderId;
  @override
  @nullable
  @JsonKey(name: 'receiver_id')
  int get receiverId;
  @override
  @nullable
  @JsonKey(name: 'created_at')
  String get date;
  @override
  @nullable
  User get sender;
  @override
  @nullable
  User get receiver;
  @override
  _$MessageCopyWith<_Message> get copyWith;
}
