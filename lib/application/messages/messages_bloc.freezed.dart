// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MessagesEventTearOff {
  const _$MessagesEventTearOff();

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

// ignore: unused_element
  GetMessages getMessages() {
    return const GetMessages();
  }

// ignore: unused_element
  GetMessagesDetails getMessagesDetails(int id, int offset) {
    return GetMessagesDetails(
      id,
      offset,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessagesEvent = _$MessagesEventTearOff();

/// @nodoc
mixin _$MessagesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
    @required Result getMessages(),
    @required Result getMessagesDetails(int id, int offset),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    Result getMessages(),
    Result getMessagesDetails(int id, int offset),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result senderIdChanged(SenderIdChanged value),
    @required Result receiverIdChanged(ReceiverIdChanged value),
    @required Result messageChanged(MessageChanged value),
    @required Result messageReceived(MessageReceived value),
    @required Result messageSent(MessageSent value),
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
    @required Result getMessages(GetMessages value),
    @required Result getMessagesDetails(GetMessagesDetails value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    Result getMessages(GetMessages value),
    Result getMessagesDetails(GetMessagesDetails value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $MessagesEventCopyWith<$Res> {
  factory $MessagesEventCopyWith(
          MessagesEvent value, $Res Function(MessagesEvent) then) =
      _$MessagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagesEventCopyWithImpl<$Res>
    implements $MessagesEventCopyWith<$Res> {
  _$MessagesEventCopyWithImpl(this._value, this._then);

  final MessagesEvent _value;
  // ignore: unused_field
  final $Res Function(MessagesEvent) _then;
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
    extends _$MessagesEventCopyWithImpl<$Res>
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
    return 'MessagesEvent.senderIdChanged(id: $id)';
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
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
    @required Result getMessages(),
    @required Result getMessagesDetails(int id, int offset),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(bool typing),
    Result goToCall(bool call),
    Result getMessages(),
    Result getMessagesDetails(int id, int offset),
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
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
    @required Result getMessages(GetMessages value),
    @required Result getMessagesDetails(GetMessagesDetails value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    Result getMessages(GetMessages value),
    Result getMessagesDetails(GetMessagesDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (senderIdChanged != null) {
      return senderIdChanged(this);
    }
    return orElse();
  }
}

abstract class SenderIdChanged implements MessagesEvent {
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
    extends _$MessagesEventCopyWithImpl<$Res>
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
    return 'MessagesEvent.receiverIdChanged(id: $id)';
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
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
    @required Result getMessages(),
    @required Result getMessagesDetails(int id, int offset),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(bool typing),
    Result goToCall(bool call),
    Result getMessages(),
    Result getMessagesDetails(int id, int offset),
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
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
    @required Result getMessages(GetMessages value),
    @required Result getMessagesDetails(GetMessagesDetails value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    Result getMessages(GetMessages value),
    Result getMessagesDetails(GetMessagesDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverIdChanged != null) {
      return receiverIdChanged(this);
    }
    return orElse();
  }
}

abstract class ReceiverIdChanged implements MessagesEvent {
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
class _$MessageChangedCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res>
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
    return 'MessagesEvent.messageChanged(msgStr: $msgStr)';
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
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
    @required Result getMessages(),
    @required Result getMessagesDetails(int id, int offset),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(bool typing),
    Result goToCall(bool call),
    Result getMessages(),
    Result getMessagesDetails(int id, int offset),
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
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
    @required Result getMessages(GetMessages value),
    @required Result getMessagesDetails(GetMessagesDetails value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    Result getMessages(GetMessages value),
    Result getMessagesDetails(GetMessagesDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class MessageChanged implements MessagesEvent {
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
    extends _$MessagesEventCopyWithImpl<$Res>
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
    return 'MessagesEvent.messageReceived(msgStr: $msgStr)';
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
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
    @required Result getMessages(),
    @required Result getMessagesDetails(int id, int offset),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(bool typing),
    Result goToCall(bool call),
    Result getMessages(),
    Result getMessagesDetails(int id, int offset),
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
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
    @required Result getMessages(GetMessages value),
    @required Result getMessagesDetails(GetMessagesDetails value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    Result getMessages(GetMessages value),
    Result getMessagesDetails(GetMessagesDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class MessageReceived implements MessagesEvent {
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
class _$MessageSentCopyWithImpl<$Res> extends _$MessagesEventCopyWithImpl<$Res>
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
    return 'MessagesEvent.messageSent(msgStr: $msgStr)';
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
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
    @required Result getMessages(),
    @required Result getMessagesDetails(int id, int offset),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(bool typing),
    Result goToCall(bool call),
    Result getMessages(),
    Result getMessagesDetails(int id, int offset),
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
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
    @required Result getMessages(GetMessages value),
    @required Result getMessagesDetails(GetMessagesDetails value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    Result getMessages(GetMessages value),
    Result getMessagesDetails(GetMessagesDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements MessagesEvent {
  const factory MessageSent(String msgStr) = _$MessageSent;

  String get msgStr;
  $MessageSentCopyWith<MessageSent> get copyWith;
}

/// @nodoc
abstract class $IsTypingCopyWith<$Res> {
  factory $IsTypingCopyWith(IsTyping value, $Res Function(IsTyping) then) =
      _$IsTypingCopyWithImpl<$Res>;
  $Res call({bool typing});
}

/// @nodoc
class _$IsTypingCopyWithImpl<$Res> extends _$MessagesEventCopyWithImpl<$Res>
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
    return 'MessagesEvent.isTyping(typing: $typing)';
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
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
    @required Result getMessages(),
    @required Result getMessagesDetails(int id, int offset),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(bool typing),
    Result goToCall(bool call),
    Result getMessages(),
    Result getMessagesDetails(int id, int offset),
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
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
    @required Result getMessages(GetMessages value),
    @required Result getMessagesDetails(GetMessagesDetails value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    Result getMessages(GetMessages value),
    Result getMessagesDetails(GetMessagesDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isTyping != null) {
      return isTyping(this);
    }
    return orElse();
  }
}

abstract class IsTyping implements MessagesEvent {
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
class _$GoToCallCopyWithImpl<$Res> extends _$MessagesEventCopyWithImpl<$Res>
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
    return 'MessagesEvent.goToCall(call: $call)';
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
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
    @required Result getMessages(),
    @required Result getMessagesDetails(int id, int offset),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(bool typing),
    Result goToCall(bool call),
    Result getMessages(),
    Result getMessagesDetails(int id, int offset),
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
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
    @required Result getMessages(GetMessages value),
    @required Result getMessagesDetails(GetMessagesDetails value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
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
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    Result getMessages(GetMessages value),
    Result getMessagesDetails(GetMessagesDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (goToCall != null) {
      return goToCall(this);
    }
    return orElse();
  }
}

abstract class GoToCall implements MessagesEvent {
  const factory GoToCall(bool call) = _$GoToCall;

  bool get call;
  $GoToCallCopyWith<GoToCall> get copyWith;
}

/// @nodoc
abstract class $GetMessagesCopyWith<$Res> {
  factory $GetMessagesCopyWith(
          GetMessages value, $Res Function(GetMessages) then) =
      _$GetMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMessagesCopyWithImpl<$Res> extends _$MessagesEventCopyWithImpl<$Res>
    implements $GetMessagesCopyWith<$Res> {
  _$GetMessagesCopyWithImpl(
      GetMessages _value, $Res Function(GetMessages) _then)
      : super(_value, (v) => _then(v as GetMessages));

  @override
  GetMessages get _value => super._value as GetMessages;
}

/// @nodoc
class _$GetMessages implements GetMessages {
  const _$GetMessages();

  @override
  String toString() {
    return 'MessagesEvent.getMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
    @required Result getMessages(),
    @required Result getMessagesDetails(int id, int offset),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
    return getMessages();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    Result getMessages(),
    Result getMessagesDetails(int id, int offset),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMessages != null) {
      return getMessages();
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
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
    @required Result getMessages(GetMessages value),
    @required Result getMessagesDetails(GetMessagesDetails value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    Result getMessages(GetMessages value),
    Result getMessagesDetails(GetMessagesDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class GetMessages implements MessagesEvent {
  const factory GetMessages() = _$GetMessages;
}

/// @nodoc
abstract class $GetMessagesDetailsCopyWith<$Res> {
  factory $GetMessagesDetailsCopyWith(
          GetMessagesDetails value, $Res Function(GetMessagesDetails) then) =
      _$GetMessagesDetailsCopyWithImpl<$Res>;
  $Res call({int id, int offset});
}

/// @nodoc
class _$GetMessagesDetailsCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res>
    implements $GetMessagesDetailsCopyWith<$Res> {
  _$GetMessagesDetailsCopyWithImpl(
      GetMessagesDetails _value, $Res Function(GetMessagesDetails) _then)
      : super(_value, (v) => _then(v as GetMessagesDetails));

  @override
  GetMessagesDetails get _value => super._value as GetMessagesDetails;

  @override
  $Res call({
    Object id = freezed,
    Object offset = freezed,
  }) {
    return _then(GetMessagesDetails(
      id == freezed ? _value.id : id as int,
      offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
class _$GetMessagesDetails implements GetMessagesDetails {
  const _$GetMessagesDetails(this.id, this.offset)
      : assert(id != null),
        assert(offset != null);

  @override
  final int id;
  @override
  final int offset;

  @override
  String toString() {
    return 'MessagesEvent.getMessagesDetails(id: $id, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMessagesDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(offset);

  @override
  $GetMessagesDetailsCopyWith<GetMessagesDetails> get copyWith =>
      _$GetMessagesDetailsCopyWithImpl<GetMessagesDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result senderIdChanged(int id),
    @required Result receiverIdChanged(int id),
    @required Result messageChanged(String msgStr),
    @required Result messageReceived(String msgStr),
    @required Result messageSent(String msgStr),
    @required Result isTyping(bool typing),
    @required Result goToCall(bool call),
    @required Result getMessages(),
    @required Result getMessagesDetails(int id, int offset),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
    return getMessagesDetails(id, offset);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result senderIdChanged(int id),
    Result receiverIdChanged(int id),
    Result messageChanged(String msgStr),
    Result messageReceived(String msgStr),
    Result messageSent(String msgStr),
    Result isTyping(bool typing),
    Result goToCall(bool call),
    Result getMessages(),
    Result getMessagesDetails(int id, int offset),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMessagesDetails != null) {
      return getMessagesDetails(id, offset);
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
    @required Result isTyping(IsTyping value),
    @required Result goToCall(GoToCall value),
    @required Result getMessages(GetMessages value),
    @required Result getMessagesDetails(GetMessagesDetails value),
  }) {
    assert(senderIdChanged != null);
    assert(receiverIdChanged != null);
    assert(messageChanged != null);
    assert(messageReceived != null);
    assert(messageSent != null);
    assert(isTyping != null);
    assert(goToCall != null);
    assert(getMessages != null);
    assert(getMessagesDetails != null);
    return getMessagesDetails(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result senderIdChanged(SenderIdChanged value),
    Result receiverIdChanged(ReceiverIdChanged value),
    Result messageChanged(MessageChanged value),
    Result messageReceived(MessageReceived value),
    Result messageSent(MessageSent value),
    Result isTyping(IsTyping value),
    Result goToCall(GoToCall value),
    Result getMessages(GetMessages value),
    Result getMessagesDetails(GetMessagesDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMessagesDetails != null) {
      return getMessagesDetails(this);
    }
    return orElse();
  }
}

abstract class GetMessagesDetails implements MessagesEvent {
  const factory GetMessagesDetails(int id, int offset) = _$GetMessagesDetails;

  int get id;
  int get offset;
  $GetMessagesDetailsCopyWith<GetMessagesDetails> get copyWith;
}

/// @nodoc
class _$MessagesStateTearOff {
  const _$MessagesStateTearOff();

// ignore: unused_element
  _MessagesState call(
      {@required
          StringNotEmpty message,
      @required
          int senderID,
      @required
          int receiverID,
      @required
          bool isTyping,
      @required
          bool isCalling,
      @required
          Message receiveMessage,
      @required
          Option<Either<ServerFailure, DetailMessages>>
              messagesFailureOrSuccessOption}) {
    return _MessagesState(
      message: message,
      senderID: senderID,
      receiverID: receiverID,
      isTyping: isTyping,
      isCalling: isCalling,
      receiveMessage: receiveMessage,
      messagesFailureOrSuccessOption: messagesFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessagesState = _$MessagesStateTearOff();

/// @nodoc
mixin _$MessagesState {
  StringNotEmpty get message;
  int get senderID;
  int get receiverID;
  bool get isTyping;
  bool get isCalling;
  Message get receiveMessage;
  Option<Either<ServerFailure, DetailMessages>>
      get messagesFailureOrSuccessOption;

  $MessagesStateCopyWith<MessagesState> get copyWith;
}

/// @nodoc
abstract class $MessagesStateCopyWith<$Res> {
  factory $MessagesStateCopyWith(
          MessagesState value, $Res Function(MessagesState) then) =
      _$MessagesStateCopyWithImpl<$Res>;
  $Res call(
      {StringNotEmpty message,
      int senderID,
      int receiverID,
      bool isTyping,
      bool isCalling,
      Message receiveMessage,
      Option<Either<ServerFailure, DetailMessages>>
          messagesFailureOrSuccessOption});

  $MessageCopyWith<$Res> get receiveMessage;
}

/// @nodoc
class _$MessagesStateCopyWithImpl<$Res>
    implements $MessagesStateCopyWith<$Res> {
  _$MessagesStateCopyWithImpl(this._value, this._then);

  final MessagesState _value;
  // ignore: unused_field
  final $Res Function(MessagesState) _then;

  @override
  $Res call({
    Object message = freezed,
    Object senderID = freezed,
    Object receiverID = freezed,
    Object isTyping = freezed,
    Object isCalling = freezed,
    Object receiveMessage = freezed,
    Object messagesFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as StringNotEmpty,
      senderID: senderID == freezed ? _value.senderID : senderID as int,
      receiverID: receiverID == freezed ? _value.receiverID : receiverID as int,
      isTyping: isTyping == freezed ? _value.isTyping : isTyping as bool,
      isCalling: isCalling == freezed ? _value.isCalling : isCalling as bool,
      receiveMessage: receiveMessage == freezed
          ? _value.receiveMessage
          : receiveMessage as Message,
      messagesFailureOrSuccessOption: messagesFailureOrSuccessOption == freezed
          ? _value.messagesFailureOrSuccessOption
          : messagesFailureOrSuccessOption
              as Option<Either<ServerFailure, DetailMessages>>,
    ));
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
abstract class _$MessagesStateCopyWith<$Res>
    implements $MessagesStateCopyWith<$Res> {
  factory _$MessagesStateCopyWith(
          _MessagesState value, $Res Function(_MessagesState) then) =
      __$MessagesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StringNotEmpty message,
      int senderID,
      int receiverID,
      bool isTyping,
      bool isCalling,
      Message receiveMessage,
      Option<Either<ServerFailure, DetailMessages>>
          messagesFailureOrSuccessOption});

  @override
  $MessageCopyWith<$Res> get receiveMessage;
}

/// @nodoc
class __$MessagesStateCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res>
    implements _$MessagesStateCopyWith<$Res> {
  __$MessagesStateCopyWithImpl(
      _MessagesState _value, $Res Function(_MessagesState) _then)
      : super(_value, (v) => _then(v as _MessagesState));

  @override
  _MessagesState get _value => super._value as _MessagesState;

  @override
  $Res call({
    Object message = freezed,
    Object senderID = freezed,
    Object receiverID = freezed,
    Object isTyping = freezed,
    Object isCalling = freezed,
    Object receiveMessage = freezed,
    Object messagesFailureOrSuccessOption = freezed,
  }) {
    return _then(_MessagesState(
      message: message == freezed ? _value.message : message as StringNotEmpty,
      senderID: senderID == freezed ? _value.senderID : senderID as int,
      receiverID: receiverID == freezed ? _value.receiverID : receiverID as int,
      isTyping: isTyping == freezed ? _value.isTyping : isTyping as bool,
      isCalling: isCalling == freezed ? _value.isCalling : isCalling as bool,
      receiveMessage: receiveMessage == freezed
          ? _value.receiveMessage
          : receiveMessage as Message,
      messagesFailureOrSuccessOption: messagesFailureOrSuccessOption == freezed
          ? _value.messagesFailureOrSuccessOption
          : messagesFailureOrSuccessOption
              as Option<Either<ServerFailure, DetailMessages>>,
    ));
  }
}

/// @nodoc
class _$_MessagesState implements _MessagesState {
  const _$_MessagesState(
      {@required this.message,
      @required this.senderID,
      @required this.receiverID,
      @required this.isTyping,
      @required this.isCalling,
      @required this.receiveMessage,
      @required this.messagesFailureOrSuccessOption})
      : assert(message != null),
        assert(senderID != null),
        assert(receiverID != null),
        assert(isTyping != null),
        assert(isCalling != null),
        assert(receiveMessage != null),
        assert(messagesFailureOrSuccessOption != null);

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
  final Message receiveMessage;
  @override
  final Option<Either<ServerFailure, DetailMessages>>
      messagesFailureOrSuccessOption;

  @override
  String toString() {
    return 'MessagesState(message: $message, senderID: $senderID, receiverID: $receiverID, isTyping: $isTyping, isCalling: $isCalling, receiveMessage: $receiveMessage, messagesFailureOrSuccessOption: $messagesFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessagesState &&
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
            (identical(other.receiveMessage, receiveMessage) ||
                const DeepCollectionEquality()
                    .equals(other.receiveMessage, receiveMessage)) &&
            (identical(other.messagesFailureOrSuccessOption,
                    messagesFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.messagesFailureOrSuccessOption,
                    messagesFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(receiverID) ^
      const DeepCollectionEquality().hash(isTyping) ^
      const DeepCollectionEquality().hash(isCalling) ^
      const DeepCollectionEquality().hash(receiveMessage) ^
      const DeepCollectionEquality().hash(messagesFailureOrSuccessOption);

  @override
  _$MessagesStateCopyWith<_MessagesState> get copyWith =>
      __$MessagesStateCopyWithImpl<_MessagesState>(this, _$identity);
}

abstract class _MessagesState implements MessagesState {
  const factory _MessagesState(
      {@required
          StringNotEmpty message,
      @required
          int senderID,
      @required
          int receiverID,
      @required
          bool isTyping,
      @required
          bool isCalling,
      @required
          Message receiveMessage,
      @required
          Option<Either<ServerFailure, DetailMessages>>
              messagesFailureOrSuccessOption}) = _$_MessagesState;

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
  Message get receiveMessage;
  @override
  Option<Either<ServerFailure, DetailMessages>>
      get messagesFailureOrSuccessOption;
  @override
  _$MessagesStateCopyWith<_MessagesState> get copyWith;
}
