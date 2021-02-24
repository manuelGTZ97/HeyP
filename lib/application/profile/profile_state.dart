part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<ServerFailure, DetailUser>>
            getUserInfoFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, DetailFeeds>>
            getUserPostsFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, ApiResponse>>
            followUserFailureOrSuccessOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        showErrorMessages: false,
        isSubmitting: false,
        getUserInfoFailureOrSuccessOption: none(),
        getUserPostsFailureOrSuccessOption: none(),
        followUserFailureOrSuccessOption: none(),
      );
}
