import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/entities/detail_messages.dart';
import '../../domain/entities/message.dart';
import '../../domain/messages/i_messages_facade.dart';

part 'messages_bloc.freezed.dart';
part 'messages_event.dart';
part 'messages_state.dart';

@injectable
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  final IMessagesFacade _messagesFacade;
  MessagesBloc(this._messagesFacade) : super(MessagesState.initial());

  @override
  Stream<MessagesState> mapEventToState(
    MessagesEvent event,
  ) async* {
    yield* event.map(
      messageChanged: (e) async* {
        yield state.copyWith(
          message: StringNotEmpty(e.msgStr),
        );
      },
      senderIdChanged: (e) async* {
        yield state.copyWith(
          senderID: e.id,
        );
      },
      receiverIdChanged: (e) async* {
        yield state.copyWith(
          receiverID: e.id,
        );
      },
      messageReceived: (e) async* {
        yield* _receiveMessage(e.msgStr);
      },
      messageSent: (e) async* {
        yield* _sendMessage(e.msgStr);
      },
      isTyping: (e) async* {
        yield state.copyWith(
          isTyping: e.typing,
          receiveMessage: Message(),
        );
      },
      getMessages: (e) async* {
        yield* _performGetMessagesActionFacade(_messagesFacade.getMessages);
      },
      getMessagesDetails: (e) async* {
        yield* _performGetMessagesDetailsActionFacade(
            e.id, e.offset, _messagesFacade.getMessagesDetails);
      },
      goToCall: (e) async* {
        yield state.copyWith(
          isCalling: e.call,
        );
      },
    );
  }

  Stream<MessagesState> _receiveMessage(String msgStr) async* {
    final Message message = Message(
      senderId: state.receiverID,
      receiverId: state.senderID,
      message: msgStr,
    );

    yield state.copyWith(
      receiveMessage: message,
    );
  }

  Stream<MessagesState> _sendMessage(String msgStr) async* {
    Message message = Message(
      senderId: state.senderID,
      receiverId: state.receiverID,
      message: msgStr,
      date: DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(DateTime.now()),
    );

    yield state.copyWith(
      receiveMessage: message,
    );
  }

  Stream<MessagesState> _performGetMessagesActionFacade(
    Future<Either<ServerFailure, DetailMessages>> Function() forwardedCall,
  ) async* {
    Either<ServerFailure, DetailMessages> failureOrSuccess;

    yield state.copyWith(
      messagesFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall();

    yield state.copyWith(
      messagesFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<MessagesState> _performGetMessagesDetailsActionFacade(
    int id,
    int offset,
    Future<Either<ServerFailure, DetailMessages>> Function({
      @required int id,
      @required int offset,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, DetailMessages> failureOrSuccess;

    yield state.copyWith(
      messagesFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall(
      id: id,
      offset: offset,
    );

    yield state.copyWith(
      messagesFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
