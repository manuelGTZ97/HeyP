part of 'news_bloc.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState({
    @required Option<Either<ServerFailure, DetailNews>> newsFailureOrSuccess,
  }) = _NewsState;

  factory NewsState.initial() => NewsState(
        newsFailureOrSuccess: none(),
      );
}
