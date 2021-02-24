import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/comment/i_comment_facade.dart';
import '../../domain/core/failures.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/entities/detail_comments.dart';

part 'comment_bloc.freezed.dart';
part 'comment_event.dart';
part 'comment_state.dart';

@injectable
class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final ICommentFacade _commentFacade;
  CommentBloc(this._commentFacade) : super(CommentState.initial());

  @override
  Stream<CommentState> mapEventToState(
    CommentEvent event,
  ) async* {
    yield* event.map(
      commentChanged: (e) async* {
        yield state.copyWith(
          comment: StringNotEmpty(e.commentStr),
          addCommentFailureOrSuccessOption: none(),
        );
      },
      addComment: (e) async* {
        yield* _performAddCommentsActionFacade(
          e.id,
          _commentFacade.addComment,
        );
      },
      deleteComment: (e) async* {
        yield* _performDeleteCommentsActionFacade(
          e.id,
          _commentFacade.deleteComment,
        );
      },
      getComments: (e) async* {
        yield* _performGetCommentsActionFacade(
          e.id,
          _commentFacade.getComments,
        );
      },
    );
  }

  Stream<CommentState> _performGetCommentsActionFacade(
    int id,
    Future<Either<ServerFailure, DetailComments>> Function({
      @required int id,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, DetailComments> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      getCommentsFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall(
      id: id,
    );

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      getCommentsFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<CommentState> _performAddCommentsActionFacade(
    int id,
    Future<Either<ServerFailure, ApiResponse>> Function({
      @required int id,
      @required StringNotEmpty comment,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;

    final isCommentValid = state.comment.isValid();
    if (isCommentValid) {
      yield state.copyWith(
        addCommentFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        id: id,
        comment: state.comment,
      );
    }

    yield state.copyWith(
      addCommentFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<CommentState> _performDeleteCommentsActionFacade(
    int id,
    Future<Either<ServerFailure, ApiResponse>> Function({
      @required int id,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;

    yield state.copyWith(
      isSubmitting: true,
      deleteCommentFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall(
      id: id,
    );

    yield state.copyWith(
      isSubmitting: false,
      deleteCommentFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
