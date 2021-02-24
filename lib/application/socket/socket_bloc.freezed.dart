// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'socket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SocketEventTearOff {
  const _$SocketEventTearOff();

// ignore: unused_element
  SenderIdChanged senderIdChanged(int id) {
    return SenderIdChanged(
      id,
    );
  }

// ignore: unused_element
  ReceiverIdChanged receiverIdChanged(int id) {
    return ReceiverIdChanged(
      id,
    );
  }

// ignore: unused_element
  MessageChanged messageChanged(String msgStr) {
    return MessageChanged(
      msgStr,
    );
  }

// ignore: unused_element
  MessageReceived messageReceived(String msgStr) {
    return MessageReceived(
      msgStr,
    );
  }

// ignore: unused_element
  MessageSent messageSent(String msgStr) {
    return MessageSent(
      msgStr,
    );
  }

// ignore: unused_element
  CallReceieverUser callReceiever(User user) {
    return CallReceieverUser(
      user,
    );
  }

// ignore: unused_element
  IsTyping isTyping(bool typing) {
    return IsTyping(
      typing,
    );
  }

// ignore: unused_element
  GoToCall goToCall(bool call) {
    return GoToCall(
      call,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SocketEvent = _$SocketEventTearOff();

/// @nodoc
mixin _$SocketEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result callReceiever(User user),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result callReceiever(User user),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result senderIdChanged(SenderIdChanged value),
    @required Result receiverIdChanged(ReceiverIdChanged value),
    @required Result messageChanged(MessageChanged value),
    @required Result messageReceived(MessageReceived value),
    @required Result messageSent(MessageSent value),
    @required Result callReceiever(CallReceieverUser value),
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result callReceiever(CallReceieverUser value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SocketEventCopyWith<$Res> {
  factory $SocketEventCopyWith(
          SocketEvent value, $Res Function(SocketEvent) then) =
      _$SocketEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocketEventCopyWithImpl<$Res> implements $SocketEventCopyWith<$Res> {
  _$SocketEventCopyWithImpl(this._value, this._then);

  final SocketEvent _value;
  // ignore: unused_field
  final $Res Function(SocketEvent) _then;
}

/// @nodoc
abstract class $SenderIdChangedCopyWith<$Res> {
  factory $SenderIdChangedCopyWith(
          SenderIdChanged value, $Res Function(SenderIdChanged) then) =
      _$SenderIdChangedCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$SenderIdChangedCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res>
    implements $SenderIdChangedCopyWith<$Res> {
  _$SenderIdChangedCopyWithImpl(
      SenderIdChanged _value, $Res Function(SenderIdChanged) _then)
      : super(_value, (v) => _then(v as SenderIdChanged));

  @override
  SenderIdChanged get _value => super._value as SenderIdChanged;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(SenderIdChanged(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$SenderIdChanged implements SenderIdChanged {
  const _$SenderIdChanged(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'SocketEvent.senderIdChanged(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SenderIdChanged &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $SenderIdChangedCopyWith<SenderIdChanged> get copyWith =>
      _$SenderIdChangedCopyWithImpl<SenderIdChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result callReceiever(User user),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return senderIdChanged(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result callReceiever(User user),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (senderIdChanged != null) {
      return senderIdChanged(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result senderIdChanged(SenderIdChanged value),
    @required Result receiverIdChanged(ReceiverIdChanged value),
    @required Result messageChanged(MessageChanged value),
    @required Result messageReceived(MessageReceived value),
    @required Result messageSent(MessageSent value),
    @required Result callReceiever(CallReceieverUser value),
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return senderIdChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result callReceiever(CallReceieverUser value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (senderIdChanged != null) {
      return senderIdChanged(this);
    }
    return orElse();
  }
}

abstract class SenderIdChanged implements SocketEvent {
  const factory SenderIdChanged(int id) = _$SenderIdChanged;

  int get id;
  $SenderIdChangedCopyWith<SenderIdChanged> get copyWith;
}

/// @nodoc
abstract class $ReceiverIdChangedCopyWith<$Res> {
  factory $ReceiverIdChangedCopyWith(
          ReceiverIdChanged value, $Res Function(ReceiverIdChanged) then) =
      _$ReceiverIdChangedCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$ReceiverIdChangedCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res>
    implements $ReceiverIdChangedCopyWith<$Res> {
  _$ReceiverIdChangedCopyWithImpl(
      ReceiverIdChanged _value, $Res Function(ReceiverIdChanged) _then)
      : super(_value, (v) => _then(v as ReceiverIdChanged));

  @override
  ReceiverIdChanged get _value => super._value as ReceiverIdChanged;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(ReceiverIdChanged(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$ReceiverIdChanged implements ReceiverIdChanged {
  const _$ReceiverIdChanged(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'SocketEvent.receiverIdChanged(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceiverIdChanged &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $ReceiverIdChangedCopyWith<ReceiverIdChanged> get copyWith =>
      _$ReceiverIdChangedCopyWithImpl<ReceiverIdChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result callReceiever(User user),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return receiverIdChanged(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result callReceiever(User user),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverIdChanged != null) {
      return receiverIdChanged(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result senderIdChanged(SenderIdChanged value),
    @required Result receiverIdChanged(ReceiverIdChanged value),
    @required Result messageChanged(MessageChanged value),
    @required Result messageReceived(MessageReceived value),
    @required Result messageSent(MessageSent value),
    @required Result callReceiever(CallReceieverUser value),
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return receiverIdChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result callReceiever(CallReceieverUser value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverIdChanged != null) {
      return receiverIdChanged(this);
    }
    return orElse();
  }
}

abstract class ReceiverIdChanged implements SocketEvent {
  const factory ReceiverIdChanged(int id) = _$ReceiverIdChanged;

  int get id;
  $ReceiverIdChangedCopyWith<ReceiverIdChanged> get copyWith;
}

/// @nodoc
abstract class $MessageChangedCopyWith<$Res> {
  factory $MessageChangedCopyWith(
          MessageChanged value, $Res Function(MessageChanged) then) =
      _$MessageChangedCopyWithImpl<$Res>;
  $Res call({String msgStr});
}

/// @nodoc
class _$MessageChangedCopyWithImpl<$Res> extends _$SocketEventCopyWithImpl<$Res>
    implements $MessageChangedCopyWith<$Res> {
  _$MessageChangedCopyWithImpl(
      MessageChanged _value, $Res Function(MessageChanged) _then)
      : super(_value, (v) => _then(v as MessageChanged));

  @override
  MessageChanged get _value => super._value as MessageChanged;

  @override
  $Res call({
    Object msgStr = freezed,
  }) {
    return _then(MessageChanged(
      msgStr == freezed ? _value.msgStr : msgStr as String,
    ));
  }
}

/// @nodoc
class _$MessageChanged implements MessageChanged {
  const _$MessageChanged(this.msgStr) : assert(msgStr != null);

  @override
  final String msgStr;

  @override
  String toString() {
    return 'SocketEvent.messageChanged(msgStr: $msgStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageChanged &&
            (identical(other.msgStr, msgStr) ||
                const DeepCollectionEquality().equals(other.msgStr, msgStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msgStr);

  @override
  $MessageChangedCopyWith<MessageChanged> get copyWith =>
      _$MessageChangedCopyWithImpl<MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result callReceiever(User user),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return messageChanged(msgStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result callReceiever(User user),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageChanged != null) {
      return messageChanged(msgStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result senderIdChanged(SenderIdChanged value),
    @required Result receiverIdChanged(ReceiverIdChanged value),
    @required Result messageChanged(MessageChanged value),
    @required Result messageReceived(MessageReceived value),
    @required Result messageSent(MessageSent value),
    @required Result callReceiever(CallReceieverUser value),
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result callReceiever(CallReceieverUser value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class MessageChanged implements SocketEvent {
  const factory MessageChanged(String msgStr) = _$MessageChanged;

  String get msgStr;
  $MessageChangedCopyWith<MessageChanged> get copyWith;
}

/// @nodoc
abstract class $MessageReceivedCopyWith<$Res> {
  factory $MessageReceivedCopyWith(
          MessageReceived value, $Res Function(MessageReceived) then) =
      _$MessageReceivedCopyWithImpl<$Res>;
  $Res call({String msgStr});
}

/// @nodoc
class _$MessageReceivedCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res>
    implements $MessageReceivedCopyWith<$Res> {
  _$MessageReceivedCopyWithImpl(
      MessageReceived _value, $Res Function(MessageReceived) _then)
      : super(_value, (v) => _then(v as MessageReceived));

  @override
  MessageReceived get _value => super._value as MessageReceived;

  @override
  $Res call({
    Object msgStr = freezed,
  }) {
    return _then(MessageReceived(
      msgStr == freezed ? _value.msgStr : msgStr as String,
    ));
  }
}

/// @nodoc
class _$MessageReceived implements MessageReceived {
  const _$MessageReceived(this.msgStr) : assert(msgStr != null);

  @override
  final String msgStr;

  @override
  String toString() {
    return 'SocketEvent.messageReceived(msgStr: $msgStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageReceived &&
            (identical(other.msgStr, msgStr) ||
                const DeepCollectionEquality().equals(other.msgStr, msgStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msgStr);

  @override
  $MessageReceivedCopyWith<MessageReceived> get copyWith =>
      _$MessageReceivedCopyWithImpl<MessageReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result callReceiever(User user),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return messageReceived(msgStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result callReceiever(User user),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageReceived != null) {
      return messageReceived(msgStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result senderIdChanged(SenderIdChanged value),
    @required Result receiverIdChanged(ReceiverIdChanged value),
    @required Result messageChanged(MessageChanged value),
    @required Result messageReceived(MessageReceived value),
    @required Result messageSent(MessageSent value),
    @required Result callReceiever(CallReceieverUser value),
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result callReceiever(CallReceieverUser value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class MessageReceived implements SocketEvent {
  const factory MessageReceived(String msgStr) = _$MessageReceived;

  String get msgStr;
  $MessageReceivedCopyWith<MessageReceived> get copyWith;
}

/// @nodoc
abstract class $MessageSentCopyWith<$Res> {
  factory $MessageSentCopyWith(
          MessageSent value, $Res Function(MessageSent) then) =
      _$MessageSentCopyWithImpl<$Res>;
  $Res call({String msgStr});
}

/// @nodoc
class _$MessageSentCopyWithImpl<$Res> extends _$SocketEventCopyWithImpl<$Res>
    implements $MessageSentCopyWith<$Res> {
  _$MessageSentCopyWithImpl(
      MessageSent _value, $Res Function(MessageSent) _then)
      : super(_value, (v) => _then(v as MessageSent));

  @override
  MessageSent get _value => super._value as MessageSent;

  @override
  $Res call({
    Object msgStr = freezed,
  }) {
    return _then(MessageSent(
      msgStr == freezed ? _value.msgStr : msgStr as String,
    ));
  }
}

/// @nodoc
class _$MessageSent implements MessageSent {
  const _$MessageSent(this.msgStr) : assert(msgStr != null);

  @override
  final String msgStr;

  @override
  String toString() {
    return 'SocketEvent.messageSent(msgStr: $msgStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageSent &&
            (identical(other.msgStr, msgStr) ||
                const DeepCollectionEquality().equals(other.msgStr, msgStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msgStr);

  @override
  $MessageSentCopyWith<MessageSent> get copyWith =>
      _$MessageSentCopyWithImpl<MessageSent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result callReceiever(User user),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return messageSent(msgStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result callReceiever(User user),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageSent != null) {
      return messageSent(msgStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result senderIdChanged(SenderIdChanged value),
    @required Result receiverIdChanged(ReceiverIdChanged value),
    @required Result messageChanged(MessageChanged value),
    @required Result messageReceived(MessageReceived value),
    @required Result messageSent(MessageSent value),
    @required Result callReceiever(CallReceieverUser value),
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result callReceiever(CallReceieverUser value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements SocketEvent {
  const factory MessageSent(String msgStr) = _$MessageSent;

  String get msgStr;
  $MessageSentCopyWith<MessageSent> get copyWith;
}

/// @nodoc
abstract class $CallReceieverUserCopyWith<$Res> {
  factory $CallReceieverUserCopyWith(
          CallReceieverUser value, $Res Function(CallReceieverUser) then) =
      _$CallReceieverUserCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$CallReceieverUserCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res>
    implements $CallReceieverUserCopyWith<$Res> {
  _$CallReceieverUserCopyWithImpl(
      CallReceieverUser _value, $Res Function(CallReceieverUser) _then)
      : super(_value, (v) => _then(v as CallReceieverUser));

  @override
  CallReceieverUser get _value => super._value as CallReceieverUser;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(CallReceieverUser(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$CallReceieverUser implements CallReceieverUser {
  const _$CallReceieverUser(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'SocketEvent.callReceiever(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CallReceieverUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $CallReceieverUserCopyWith<CallReceieverUser> get copyWith =>
      _$CallReceieverUserCopyWithImpl<CallReceieverUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result callReceiever(User user),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return callReceiever(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result callReceiever(User user),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (callReceiever != null) {
      return callReceiever(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result senderIdChanged(SenderIdChanged value),
    @required Result receiverIdChanged(ReceiverIdChanged value),
    @required Result messageChanged(MessageChanged value),
    @required Result messageReceived(MessageReceived value),
    @required Result messageSent(MessageSent value),
    @required Result callReceiever(CallReceieverUser value),
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return callReceiever(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result callReceiever(CallReceieverUser value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (callReceiever != null) {
      return callReceiever(this);
    }
    return orElse();
  }
}

abstract class CallReceieverUser implements SocketEvent {
  const factory CallReceieverUser(User user) = _$CallReceieverUser;

  User get user;
  $CallReceieverUserCopyWith<CallReceieverUser> get copyWith;
}

/// @nodoc
abstract class $IsTypingCopyWith<$Res> {
  factory $IsTypingCopyWith(IsTyping value, $Res Function(IsTyping) then) =
      _$IsTypingCopyWithImpl<$Res>;
  $Res call({bool typing});
}

/// @nodoc
class _$IsTypingCopyWithImpl<$Res> extends _$SocketEventCopyWithImpl<$Res>
    implements $IsTypingCopyWith<$Res> {
  _$IsTypingCopyWithImpl(IsTyping _value, $Res Function(IsTyping) _then)
      : super(_value, (v) => _then(v as IsTyping));

  @override
  IsTyping get _value => super._value as IsTyping;

  @override
  $Res call({
    Object typing = freezed,
  }) {
    return _then(IsTyping(
      typing == freezed ? _value.typing : typing as bool,
    ));
  }
}

/// @nodoc
class _$IsTyping implements IsTyping {
  const _$IsTyping(this.typing) : assert(typing != null);

  @override
  final bool typing;

  @override
  String toString() {
    return 'SocketEvent.isTyping(typing: $typing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsTyping &&
            (identical(other.typing, typing) ||
                const DeepCollectionEquality().equals(other.typing, typing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(typing);

  @override
  $IsTypingCopyWith<IsTyping> get copyWith =>
      _$IsTypingCopyWithImpl<IsTyping>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result callReceiever(User user),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return isTyping(typing);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result callReceiever(User user),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isTyping != null) {
      return isTyping(typing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result senderIdChanged(SenderIdChanged value),
    @required Result receiverIdChanged(ReceiverIdChanged value),
    @required Result messageChanged(MessageChanged value),
    @required Result messageReceived(MessageReceived value),
    @required Result messageSent(MessageSent value),
    @required Result callReceiever(CallReceieverUser value),
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return isTyping(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result callReceiever(CallReceieverUser value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isTyping != null) {
      return isTyping(this);
    }
    return orElse();
  }
}

abstract class IsTyping implements SocketEvent {
  const factory IsTyping(bool typing) = _$IsTyping;

  bool get typing;
  $IsTypingCopyWith<IsTyping> get copyWith;
}

/// @nodoc
abstract class $GoToCallCopyWith<$Res> {
  factory $GoToCallCopyWith(GoToCall value, $Res Function(GoToCall) then) =
      _$GoToCallCopyWithImpl<$Res>;
  $Res call({bool call});
}

/// @nodoc
class _$GoToCallCopyWithImpl<$Res> extends _$SocketEventCopyWithImpl<$Res>
    implements $GoToCallCopyWith<$Res> {
  _$GoToCallCopyWithImpl(GoToCall _value, $Res Function(GoToCall) _then)
      : super(_value, (v) => _then(v as GoToCall));

  @override
  GoToCall get _value => super._value as GoToCall;

  @override
  $Res call({
    Object call = freezed,
  }) {
    return _then(GoToCall(
      call == freezed ? _value.call : call as bool,
    ));
  }
}

/// @nodoc
class _$GoToCall implements GoToCall {
  const _$GoToCall(this.call) : assert(call != null);

  @override
  final bool call;

  @override
  String toString() {
    return 'SocketEvent.goToCall(call: $call)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GoToCall &&
            (identical(other.call, call) ||
                const DeepCollectionEquality().equals(other.call, call)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(call);

  @override
  $GoToCallCopyWith<GoToCall> get copyWith =>
      _$GoToCallCopyWithImpl<GoToCall>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result callReceiever(User user),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return goToCall(call);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result callReceiever(User user),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (goToCall != null) {
      return goToCall(call);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result senderIdChanged(SenderIdChanged value),
    @required Result receiverIdChanged(ReceiverIdChanged value),
    @required Result messageChanged(MessageChanged value),
    @required Result messageReceived(MessageReceived value),
    @required Result messageSent(MessageSent value),
    @required Result callReceiever(CallReceieverUser value),
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(callReceiever != null);
    assert(isTyping != null);
    assert(goToCall != null);
    return goToCall(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result callReceiever(CallReceieverUser value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (goToCall != null) {
      return goToCall(this);
    }
    return orElse();
  }
}

abstract class GoToCall implements SocketEvent {
  const factory GoToCall(bool call) = _$GoToCall;

  bool get call;
  $GoToCallCopyWith<GoToCall> get copyWith;
}

/// @nodoc
class _$SocketStateTearOff {
  const _$SocketStateTearOff();

// ignore: unused_element
  _SocketState call(
      {@required StringNotEmpty message,
      @required int senderID,
      @required int receiverID,
      @required bool isTyping,
      @required bool isCalling,
      @required User callReceiver,
      @required String channelId,
      @required Message receiveMessage}) {
    return _SocketState(
      message: message,
      senderID: senderID,
      receiverID: receiverID,
      isTyping: isTyping,
      isCalling: isCalling,
      callReceiver: callReceiver,
      channelId: channelId,
      receiveMessage: receiveMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SocketState = _$SocketStateTearOff();

/// @nodoc
mixin _$SocketState {
  StringNotEmpty get message;
  int get senderID;
  int get receiverID;
  bool get isTyping;
  bool get isCalling;
  User get callReceiver;
  String get channelId;
  Message get receiveMessage;

  $SocketStateCopyWith<SocketState> get copyWith;
}

/// @nodoc
abstract class $SocketStateCopyWith<$Res> {
  factory $SocketStateCopyWith(
          SocketState value, $Res Function(SocketState) then) =
      _$SocketStateCopyWithImpl<$Res>;
  $Res call(
      {StringNotEmpty message,
      int senderID,
      int receiverID,
      bool isTyping,
      bool isCalling,
      User callReceiver,
      String channelId,
      Message receiveMessage});

  $UserCopyWith<$Res> get callReceiver;
  $MessageCopyWith<$Res> get receiveMessage;
}

/// @nodoc
class _$SocketStateCopyWithImpl<$Res> implements $SocketStateCopyWith<$Res> {
  _$SocketStateCopyWithImpl(this._value, this._then);

  final SocketState _value;
  // ignore: unused_field
  final $Res Function(SocketState) _then;

  @override
  $Res call({
    Object message = freezed,
    Object senderID = freezed,
    Object receiverID = freezed,
    Object isTyping = freezed,
    Object isCalling = freezed,
    Object callReceiver = freezed,
    Object channelId = freezed,
    Object receiveMessage = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as StringNotEmpty,
      senderID: senderID == freezed ? _value.senderID : senderID as int,
      receiverID: receiverID == freezed ? _value.receiverID : receiverID as int,
      isTyping: isTyping == freezed ? _value.isTyping : isTyping as bool,
      isCalling: isCalling == freezed ? _value.isCalling : isCalling as bool,
      callReceiver:
          callReceiver == freezed ? _value.callReceiver : callReceiver as User,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      receiveMessage: receiveMessage == freezed
          ? _value.receiveMessage
          : receiveMessage as Message,
    ));
  }

  @override
  $UserCopyWith<$Res> get callReceiver {
    if (_value.callReceiver == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.callReceiver, (value) {
      return _then(_value.copyWith(callReceiver: value));
    });
  }

  @override
  $MessageCopyWith<$Res> get receiveMessage {
    if (_value.receiveMessage == null) {
      return null;
    }
    return $MessageCopyWith<$Res>(_value.receiveMessage, (value) {
      return _then(_value.copyWith(receiveMessage: value));
    });
  }
}

/// @nodoc
abstract class _$SocketStateCopyWith<$Res>
    implements $SocketStateCopyWith<$Res> {
  factory _$SocketStateCopyWith(
          _SocketState value, $Res Function(_SocketState) then) =
      __$SocketStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StringNotEmpty message,
      int senderID,
      int receiverID,
      bool isTyping,
      bool isCalling,
      User callReceiver,
      String channelId,
      Message receiveMessage});

  @override
  $UserCopyWith<$Res> get callReceiver;
  @override
  $MessageCopyWith<$Res> get receiveMessage;
}

/// @nodoc
class __$SocketStateCopyWithImpl<$Res> extends _$SocketStateCopyWithImpl<$Res>
    implements _$SocketStateCopyWith<$Res> {
  __$SocketStateCopyWithImpl(
      _SocketState _value, $Res Function(_SocketState) _then)
      : super(_value, (v) => _then(v as _SocketState));

  @override
  _SocketState get _value => super._value as _SocketState;

  @override
  $Res call({
    Object message = freezed,
    Object senderID = freezed,
    Object receiverID = freezed,
    Object isTyping = freezed,
    Object isCalling = freezed,
    Object callReceiver = freezed,
    Object channelId = freezed,
    Object receiveMessage = freezed,
  }) {
    return _then(_SocketState(
      message: message == freezed ? _value.message : message as StringNotEmpty,
      senderID: senderID == freezed ? _value.senderID : senderID as int,
      receiverID: receiverID == freezed ? _value.receiverID : receiverID as int,
      isTyping: isTyping == freezed ? _value.isTyping : isTyping as bool,
      isCalling: isCalling == freezed ? _value.isCalling : isCalling as bool,
      callReceiver:
          callReceiver == freezed ? _value.callReceiver : callReceiver as User,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      receiveMessage: receiveMessage == freezed
          ? _value.receiveMessage
          : receiveMessage as Message,
    ));
  }
}

/// @nodoc
class _$_SocketState implements _SocketState {
  const _$_SocketState(
      {@required this.message,
      @required this.senderID,
      @required this.receiverID,
      @required this.isTyping,
      @required this.isCalling,
      @required this.callReceiver,
      @required this.channelId,
      @required this.receiveMessage})
      : assert(message != null),
        assert(senderID != null),
        assert(receiverID != null),
        assert(isTyping != null),
        assert(isCalling != null),
        assert(callReceiver != null),
        assert(channelId != null),
        assert(receiveMessage != null);

  @override
  final StringNotEmpty message;
  @override
  final int senderID;
  @override
  final int receiverID;
  @override
  final bool isTyping;
  @override
  final bool isCalling;
  @override
  final User callReceiver;
  @override
  final String channelId;
  @override
  final Message receiveMessage;

  @override
  String toString() {
    return 'SocketState(message: $message, senderID: $senderID, receiverID: $receiverID, isTyping: $isTyping, isCalling: $isCalling, callReceiver: $callReceiver, channelId: $channelId, receiveMessage: $receiveMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SocketState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.senderID, senderID) ||
                const DeepCollectionEquality()
                    .equals(other.senderID, senderID)) &&
            (identical(other.receiverID, receiverID) ||
                const DeepCollectionEquality()
                    .equals(other.receiverID, receiverID)) &&
            (identical(other.isTyping, isTyping) ||
                const DeepCollectionEquality()
                    .equals(other.isTyping, isTyping)) &&
            (identical(other.isCalling, isCalling) ||
                const DeepCollectionEquality()
                    .equals(other.isCalling, isCalling)) &&
            (identical(other.callReceiver, callReceiver) ||
                const DeepCollectionEquality()
                    .equals(other.callReceiver, callReceiver)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)) &&
            (identical(other.receiveMessage, receiveMessage) ||
                const DeepCollectionEquality()
                    .equals(other.receiveMessage, receiveMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(receiverID) ^
      const DeepCollectionEquality().hash(isTyping) ^
      const DeepCollectionEquality().hash(isCalling) ^
      const DeepCollectionEquality().hash(callReceiver) ^
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(receiveMessage);

  @override
  _$SocketStateCopyWith<_SocketState> get copyWith =>
      __$SocketStateCopyWithImpl<_SocketState>(this, _$identity);
}

abstract class _SocketState implements SocketState {
  const factory _SocketState(
      {@required StringNotEmpty message,
      @required int senderID,
      @required int receiverID,
      @required bool isTyping,
      @required bool isCalling,
      @required User callReceiver,
      @required String channelId,
      @required Message receiveMessage}) = _$_SocketState;

  @override
  StringNotEmpty get message;
  @override
  int get senderID;
  @override
  int get receiverID;
  @override
  bool get isTyping;
  @override
  bool get isCalling;
  @override
  User get callReceiver;
  @override
  String get channelId;
  @override
  Message get receiveMessage;
  @override
  _$SocketStateCopyWith<_SocketState> get copyWith;
}
