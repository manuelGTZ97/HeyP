part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @required StringNotEmpty query,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<ServerFailure, DetailFeeds>>
            searchPostsFailureOrSuccessOption,
  }) = _SearchState;

  factory SearchState.initial() => SearchState(
        query: StringNotEmpty(''),
        showErrorMessages: false,
        isSubmitting: false,
        searchPostsFailureOrSuccessOption: none(),
      );
}
