import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/entities/detail_feeds.dart';
import '../../domain/search/i_search_facade.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchFacade _searchFacade;
  SearchBloc(this._searchFacade) : super(SearchState.initial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      queryChanged: (e) async* {
        yield state.copyWith(
          query: StringNotEmpty(e.queryStr),
          searchPostsFailureOrSuccessOption: none(),
        );
      },
      search: (e) async* {
        yield* _performSearch(
          _searchFacade.search,
        );
      },
      searchPosts: (e) async* {
        yield* _performSearch(
          _searchFacade.searchPosts,
        );
      },
      searchCategories: (e) async* {},
    );
  }

  Stream<SearchState> _performSearch(
    Future<Either<ServerFailure, DetailFeeds>> Function({
      @required StringNotEmpty query,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, DetailFeeds> failureOrSuccess;

    final isQueryValid = state.query.isValid();

    if (isQueryValid) {
      yield state.copyWith(
        isSubmitting: true,
        searchPostsFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        query: state.query,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      searchPostsFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
