part of 'post_bloc.dart';

@freezed
abstract class PostState with _$PostState {
  const factory PostState({
    @required String image,
    @required String body,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<ServerFailure, ApiResponse>>
            addPostFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, ApiResponse>>
            likePostFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, DetailPost>> getPostFailureOrSuccessOption,
  }) = _PostState;

  factory PostState.initial() => PostState(
        image: '',
        body: '',
        showErrorMessages: false,
        isSubmitting: false,
        addPostFailureOrSuccessOption: none(),
        likePostFailureOrSuccessOption: none(),
        getPostFailureOrSuccessOption: none(),
      );
}
