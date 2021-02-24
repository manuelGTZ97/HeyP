part of 'socket_bloc.dart';

@freezed
abstract class SocketEvent with _$SocketEvent {
  const factory SocketEvent.senderIdChanged(int id) = SenderIdChanged;
  const factory SocketEvent.receiverIdChanged(int id) = ReceiverIdChanged;
  const factory SocketEvent.messageChanged(String msgStr) = MessageChanged;
  const factory SocketEvent.messageReceived(String msgStr) = MessageReceived;
  const factory SocketEvent.messageSent(String msgStr) = MessageSent;
  const factory SocketEvent.callReceiever(User user) = CallReceieverUser;
  const factory SocketEvent.isTyping(bool typing) = IsTyping;
  const factory SocketEvent.goToCall(bool call) = GoToCall;
}
