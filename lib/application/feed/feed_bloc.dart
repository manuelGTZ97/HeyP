import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/detail_feeds.dart';
import '../../domain/feed/i_feed_facade.dart';

part 'feed_bloc.freezed.dart';
part 'feed_event.dart';
part 'feed_state.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final IFeedFacade _feedFacade;
  FeedBloc(this._feedFacade) : super(FeedState.initial());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    yield* event.map(
      getFeeds: (e) async* {
        yield* _performGetFeeds(
          e.offset,
          _feedFacade.getFeeds,
        );
      },
      getUserFeeds: (e) async* {
        yield* _performGetUserFeeds(
          e.offset,
          _feedFacade.getUserFeeds,
        );
      },
      getPosts: (e) async* {
        yield* _performGetPosts(
          e.userId,
          _feedFacade.getPosts,
        );
      },
    );
  }

  Stream<FeedState> _performGetFeeds(
    int offset,
    Future<Either<ServerFailure, DetailFeeds>> Function({
      @required int offset,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, DetailFeeds> failureOrSuccess;

    yield state.copyWith(
      allFeedsFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardedCall(
      offset: offset,
    );

    yield state.copyWith(
      allFeedsFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Stream<FeedState> _performGetUserFeeds(
    int offset,
    Future<Either<ServerFailure, DetailFeeds>> Function({
      @required int offset,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, DetailFeeds> failureOrSuccess;

    yield state.copyWith(
      userFeedsFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardedCall(
      offset: offset,
    );

    yield state.copyWith(
      userFeedsFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Stream<FeedState> _performGetPosts(
    int userId,
    Future<Either<ServerFailure, DetailFeeds>> Function({
      @required int userId,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, DetailFeeds> failureOrSuccess;

    yield state.copyWith(
      userFeedsFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardedCall(
      userId: userId,
    );

    yield state.copyWith(
      userFeedsFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
