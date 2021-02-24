// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_messages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DetailMessages _$DetailMessagesFromJson(Map<String, dynamic> json) {
  return _DetailMessages.fromJson(json);
}

/// @nodoc
class _$DetailMessagesTearOff {
  const _$DetailMessagesTearOff();

// ignore: unused_element
  _DetailMessages call(
      {bool success,
      @nullable String message,
      @nullable List<Message> messages}) {
    return _DetailMessages(
      success: success,
      message: message,
      messages: messages,
    );
  }

// ignore: unused_element
  DetailMessages fromJson(Map<String, Object> json) {
    return DetailMessages.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DetailMessages = _$DetailMessagesTearOff();

/// @nodoc
mixin _$DetailMessages {
  bool get success;
  @nullable
  String get message;
  @nullable
  List<Message> get messages;

  Map<String, dynamic> toJson();
  $DetailMessagesCopyWith<DetailMessages> get copyWith;
}

/// @nodoc
abstract class $DetailMessagesCopyWith<$Res> {
  factory $DetailMessagesCopyWith(
          DetailMessages value, $Res Function(DetailMessages) then) =
      _$DetailMessagesCopyWithImpl<$Res>;
  $Res call(
      {bool success,
      @nullable String message,
      @nullable List<Message> messages});
}

/// @nodoc
class _$DetailMessagesCopyWithImpl<$Res>
    implements $DetailMessagesCopyWith<$Res> {
  _$DetailMessagesCopyWithImpl(this._value, this._then);

  final DetailMessages _value;
  // ignore: unused_field
  final $Res Function(DetailMessages) _then;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object messages = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      messages:
          messages == freezed ? _value.messages : messages as List<Message>,
    ));
  }
}

/// @nodoc
abstract class _$DetailMessagesCopyWith<$Res>
    implements $DetailMessagesCopyWith<$Res> {
  factory _$DetailMessagesCopyWith(
          _DetailMessages value, $Res Function(_DetailMessages) then) =
      __$DetailMessagesCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success,
      @nullable String message,
      @nullable List<Message> messages});
}

/// @nodoc
class __$DetailMessagesCopyWithImpl<$Res>
    extends _$DetailMessagesCopyWithImpl<$Res>
    implements _$DetailMessagesCopyWith<$Res> {
  __$DetailMessagesCopyWithImpl(
      _DetailMessages _value, $Res Function(_DetailMessages) _then)
      : super(_value, (v) => _then(v as _DetailMessages));

  @override
  _DetailMessages get _value => super._value as _DetailMessages;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object messages = freezed,
  }) {
    return _then(_DetailMessages(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      messages:
          messages == freezed ? _value.messages : messages as List<Message>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DetailMessages implements _DetailMessages {
  const _$_DetailMessages(
      {this.success, @nullable this.message, @nullable this.messages});

  factory _$_DetailMessages.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailMessagesFromJson(json);

  @override
  final bool success;
  @override
  @nullable
  final String message;
  @override
  @nullable
  final List<Message> messages;

  @override
  String toString() {
    return 'DetailMessages(success: $success, message: $message, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailMessages &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(messages);

  @override
  _$DetailMessagesCopyWith<_DetailMessages> get copyWith =>
      __$DetailMessagesCopyWithImpl<_DetailMessages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailMessagesToJson(this);
  }
}

abstract class _DetailMessages implements DetailMessages {
  const factory _DetailMessages(
      {bool success,
      @nullable String message,
      @nullable List<Message> messages}) = _$_DetailMessages;

  factory _DetailMessages.fromJson(Map<String, dynamic> json) =
      _$_DetailMessages.fromJson;

  @override
  bool get success;
  @override
  @nullable
  String get message;
  @override
  @nullable
  List<Message> get messages;
  @override
  _$DetailMessagesCopyWith<_DetailMessages> get copyWith;
}
