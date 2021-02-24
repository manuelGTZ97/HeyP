part of 'messages_bloc.dart';

@freezed
abstract class MessagesEvent with _$MessagesEvent {
  const factory MessagesEvent.senderIdChanged(int id) = SenderIdChanged;
  const factory MessagesEvent.receiverIdChanged(int id) = ReceiverIdChanged;
  const factory MessagesEvent.messageChanged(String msgStr) = MessageChanged;
  const factory MessagesEvent.messageReceived(String msgStr) = MessageReceived;
  const factory MessagesEvent.messageSent(String msgStr) = MessageSent;
  const factory MessagesEvent.isTyping(bool typing) = IsTyping;
  const factory MessagesEvent.goToCall(bool call) = GoToCall;
  const factory MessagesEvent.getMessages() = GetMessages;
  const factory MessagesEvent.getMessagesDetails(int id, int offset) =
      GetMessagesDetails;
}
