part of 'comment_bloc.dart';

@freezed
abstract class CommentState with _$CommentState {
  const factory CommentState({
    @required StringNotEmpty comment,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<ServerFailure, DetailComments>>
            getCommentsFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, ApiResponse>>
            addCommentFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, ApiResponse>>
            deleteCommentFailureOrSuccessOption,
  }) = _CommentState;

  factory CommentState.initial() => CommentState(
        comment: StringNotEmpty(''),
        showErrorMessages: false,
        isSubmitting: false,
        getCommentsFailureOrSuccessOption: none(),
        addCommentFailureOrSuccessOption: none(),
        deleteCommentFailureOrSuccessOption: none(),
      );
}
