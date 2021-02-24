part of 'feed_bloc.dart';

@freezed
abstract class FeedState with _$FeedState {
  const factory FeedState({
    @required
        Option<Either<ServerFailure, DetailFeeds>> userFeedsFailureOrSuccess,
    @required
        Option<Either<ServerFailure, DetailFeeds>> allFeedsFailureOrSuccess,
  }) = _FeedState;

  factory FeedState.initial() => FeedState(
        userFeedsFailureOrSuccess: none(),
        allFeedsFailureOrSuccess: none(),
      );
}
