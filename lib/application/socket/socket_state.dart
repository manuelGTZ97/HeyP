part of 'socket_bloc.dart';

@freezed
abstract class SocketState with _$SocketState {
  const factory SocketState({
    @required StringNotEmpty message,
    @required int senderID,
    @required int receiverID,
    @required bool isTyping,
    @required bool isCalling,
    @required User callReceiver,
    @required String channelId,
    @required Message receiveMessage,
  }) = _SocketState;

  factory SocketState.initial() => SocketState(
        message: StringNotEmpty(''),
        senderID: -1,
        receiverID: -1,
        isTyping: false,
        isCalling: false,
        callReceiver: User(),
        channelId: '',
        receiveMessage: Message(),
      );
}
