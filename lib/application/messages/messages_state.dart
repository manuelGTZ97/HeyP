part of 'messages_bloc.dart';

@freezed
abstract class MessagesState with _$MessagesState {
  const factory MessagesState({
    @required StringNotEmpty message,
    @required int senderID,
    @required int receiverID,
    @required bool isTyping,
    @required bool isCalling,
    @required Message receiveMessage,
    @required
        Option<Either<ServerFailure, DetailMessages>>
            messagesFailureOrSuccessOption,
  }) = _MessagesState;

  factory MessagesState.initial() => MessagesState(
        message: StringNotEmpty(''),
        senderID: -1,
        receiverID: -1,
        isTyping: false,
        isCalling: false,
        receiveMessage: Message(),
        messagesFailureOrSuccessOption: none(),
      );
}
