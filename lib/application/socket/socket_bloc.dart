import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/entities/message.dart';
import '../../domain/entities/user.dart';

part 'socket_bloc.freezed.dart';
part 'socket_event.dart';
part 'socket_state.dart';

@injectable
class SocketBloc extends Bloc<SocketEvent, SocketState> {
  SocketBloc() : super(SocketState.initial());

  @override
  Stream<SocketState> mapEventToState(
    SocketEvent event,
  ) async* {
    yield* event.map(
      senderIdChanged: (e) async* {},
      receiverIdChanged: (e) async* {},
      messageChanged: (e) async* {},
      messageReceived: (e) async* {},
      messageSent: (e) async* {},
      callReceiever: (e) async* {
        yield state.copyWith(
          callReceiver: e.user,
        );
      },
      isTyping: (e) async* {},
      goToCall: (e) async* {
        yield state.copyWith(
          isCalling: e.call,
        );
      },
    );
  }
}
