// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

// ignore: unused_element
  QueryChanged queryChanged(String queryStr) {
    return QueryChanged(
      queryStr,
    );
  }

// ignore: unused_element
  SearchPosts searchPosts() {
    return const SearchPosts();
  }

// ignore: unused_element
  Search search() {
    return const Search();
  }

// ignore: unused_element
  SearchCategories searchCategories() {
    return const SearchCategories();
  }
}

/// @nodoc
// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result queryChanged(String queryStr),
    @required Result searchPosts(),
    @required Result search(),
    @required Result searchCategories(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result queryChanged(String queryStr),
    Result searchPosts(),
    Result search(),
    Result searchCategories(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result queryChanged(QueryChanged value),
    @required Result searchPosts(SearchPosts value),
    @required Result search(Search value),
    @required Result searchCategories(SearchCategories value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result queryChanged(QueryChanged value),
    Result searchPosts(SearchPosts value),
    Result search(Search value),
    Result searchCategories(SearchCategories value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class $QueryChangedCopyWith<$Res> {
  factory $QueryChangedCopyWith(
          QueryChanged value, $Res Function(QueryChanged) then) =
      _$QueryChangedCopyWithImpl<$Res>;
  $Res call({String queryStr});
}

/// @nodoc
class _$QueryChangedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $QueryChangedCopyWith<$Res> {
  _$QueryChangedCopyWithImpl(
      QueryChanged _value, $Res Function(QueryChanged) _then)
      : super(_value, (v) => _then(v as QueryChanged));

  @override
  QueryChanged get _value => super._value as QueryChanged;

  @override
  $Res call({
    Object queryStr = freezed,
  }) {
    return _then(QueryChanged(
      queryStr == freezed ? _value.queryStr : queryStr as String,
    ));
  }
}

/// @nodoc
class _$QueryChanged implements QueryChanged {
  const _$QueryChanged(this.queryStr) : assert(queryStr != null);

  @override
  final String queryStr;

  @override
  String toString() {
    return 'SearchEvent.queryChanged(queryStr: $queryStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QueryChanged &&
            (identical(other.queryStr, queryStr) ||
                const DeepCollectionEquality()
                    .equals(other.queryStr, queryStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryStr);

  @override
  $QueryChangedCopyWith<QueryChanged> get copyWith =>
      _$QueryChangedCopyWithImpl<QueryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result queryChanged(String queryStr),
    @required Result searchPosts(),
    @required Result search(),
    @required Result searchCategories(),
  }) {
    assert(queryChanged != null);
    assert(searchPosts != null);
    assert(search != null);
    assert(searchCategories != null);
    return queryChanged(queryStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result queryChanged(String queryStr),
    Result searchPosts(),
    Result search(),
    Result searchCategories(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (queryChanged != null) {
      return queryChanged(queryStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result queryChanged(QueryChanged value),
    @required Result searchPosts(SearchPosts value),
    @required Result search(Search value),
    @required Result searchCategories(SearchCategories value),
  }) {
    assert(queryChanged != null);
    assert(searchPosts != null);
    assert(search != null);
    assert(searchCategories != null);
    return queryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result queryChanged(QueryChanged value),
    Result searchPosts(SearchPosts value),
    Result search(Search value),
    Result searchCategories(SearchCategories value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (queryChanged != null) {
      return queryChanged(this);
    }
    return orElse();
  }
}

abstract class QueryChanged implements SearchEvent {
  const factory QueryChanged(String queryStr) = _$QueryChanged;

  String get queryStr;
  $QueryChangedCopyWith<QueryChanged> get copyWith;
}

/// @nodoc
abstract class $SearchPostsCopyWith<$Res> {
  factory $SearchPostsCopyWith(
          SearchPosts value, $Res Function(SearchPosts) then) =
      _$SearchPostsCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchPostsCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchPostsCopyWith<$Res> {
  _$SearchPostsCopyWithImpl(
      SearchPosts _value, $Res Function(SearchPosts) _then)
      : super(_value, (v) => _then(v as SearchPosts));

  @override
  SearchPosts get _value => super._value as SearchPosts;
}

/// @nodoc
class _$SearchPosts implements SearchPosts {
  const _$SearchPosts();

  @override
  String toString() {
    return 'SearchEvent.searchPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result queryChanged(String queryStr),
    @required Result searchPosts(),
    @required Result search(),
    @required Result searchCategories(),
  }) {
    assert(queryChanged != null);
    assert(searchPosts != null);
    assert(search != null);
    assert(searchCategories != null);
    return searchPosts();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result queryChanged(String queryStr),
    Result searchPosts(),
    Result search(),
    Result searchCategories(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPosts != null) {
      return searchPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result queryChanged(QueryChanged value),
    @required Result searchPosts(SearchPosts value),
    @required Result search(Search value),
    @required Result searchCategories(SearchCategories value),
  }) {
    assert(queryChanged != null);
    assert(searchPosts != null);
    assert(search != null);
    assert(searchCategories != null);
    return searchPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result queryChanged(QueryChanged value),
    Result searchPosts(SearchPosts value),
    Result search(Search value),
    Result searchCategories(SearchCategories value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPosts != null) {
      return searchPosts(this);
    }
    return orElse();
  }
}

abstract class SearchPosts implements SearchEvent {
  const factory SearchPosts() = _$SearchPosts;
}

/// @nodoc
abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(Search _value, $Res Function(Search) _then)
      : super(_value, (v) => _then(v as Search));

  @override
  Search get _value => super._value as Search;
}

/// @nodoc
class _$Search implements Search {
  const _$Search();

  @override
  String toString() {
    return 'SearchEvent.search()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Search);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result queryChanged(String queryStr),
    @required Result searchPosts(),
    @required Result search(),
    @required Result searchCategories(),
  }) {
    assert(queryChanged != null);
    assert(searchPosts != null);
    assert(search != null);
    assert(searchCategories != null);
    return search();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result queryChanged(String queryStr),
    Result searchPosts(),
    Result search(),
    Result searchCategories(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result queryChanged(QueryChanged value),
    @required Result searchPosts(SearchPosts value),
    @required Result search(Search value),
    @required Result searchCategories(SearchCategories value),
  }) {
    assert(queryChanged != null);
    assert(searchPosts != null);
    assert(search != null);
    assert(searchCategories != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result queryChanged(QueryChanged value),
    Result searchPosts(SearchPosts value),
    Result search(Search value),
    Result searchCategories(SearchCategories value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements SearchEvent {
  const factory Search() = _$Search;
}

/// @nodoc
abstract class $SearchCategoriesCopyWith<$Res> {
  factory $SearchCategoriesCopyWith(
          SearchCategories value, $Res Function(SearchCategories) then) =
      _$SearchCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchCategoriesCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchCategoriesCopyWith<$Res> {
  _$SearchCategoriesCopyWithImpl(
      SearchCategories _value, $Res Function(SearchCategories) _then)
      : super(_value, (v) => _then(v as SearchCategories));

  @override
  SearchCategories get _value => super._value as SearchCategories;
}

/// @nodoc
class _$SearchCategories implements SearchCategories {
  const _$SearchCategories();

  @override
  String toString() {
    return 'SearchEvent.searchCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result queryChanged(String queryStr),
    @required Result searchPosts(),
    @required Result search(),
    @required Result searchCategories(),
  }) {
    assert(queryChanged != null);
    assert(searchPosts != null);
    assert(search != null);
    assert(searchCategories != null);
    return searchCategories();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result queryChanged(String queryStr),
    Result searchPosts(),
    Result search(),
    Result searchCategories(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchCategories != null) {
      return searchCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result queryChanged(QueryChanged value),
    @required Result searchPosts(SearchPosts value),
    @required Result search(Search value),
    @required Result searchCategories(SearchCategories value),
  }) {
    assert(queryChanged != null);
    assert(searchPosts != null);
    assert(search != null);
    assert(searchCategories != null);
    return searchCategories(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result queryChanged(QueryChanged value),
    Result searchPosts(SearchPosts value),
    Result search(Search value),
    Result searchCategories(SearchCategories value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchCategories != null) {
      return searchCategories(this);
    }
    return orElse();
  }
}

abstract class SearchCategories implements SearchEvent {
  const factory SearchCategories() = _$SearchCategories;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchState call(
      {@required
          StringNotEmpty query,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, DetailFeeds>>
              searchPostsFailureOrSuccessOption}) {
    return _SearchState(
      query: query,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      searchPostsFailureOrSuccessOption: searchPostsFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  StringNotEmpty get query;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ServerFailure, DetailFeeds>>
      get searchPostsFailureOrSuccessOption;

  $SearchStateCopyWith<SearchState> get copyWith;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {StringNotEmpty query,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, DetailFeeds>>
          searchPostsFailureOrSuccessOption});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object query = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object searchPostsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed ? _value.query : query as StringNotEmpty,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      searchPostsFailureOrSuccessOption:
          searchPostsFailureOrSuccessOption == freezed
              ? _value.searchPostsFailureOrSuccessOption
              : searchPostsFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailFeeds>>,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StringNotEmpty query,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, DetailFeeds>>
          searchPostsFailureOrSuccessOption});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object query = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object searchPostsFailureOrSuccessOption = freezed,
  }) {
    return _then(_SearchState(
      query: query == freezed ? _value.query : query as StringNotEmpty,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      searchPostsFailureOrSuccessOption:
          searchPostsFailureOrSuccessOption == freezed
              ? _value.searchPostsFailureOrSuccessOption
              : searchPostsFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailFeeds>>,
    ));
  }
}

/// @nodoc
class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {@required this.query,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.searchPostsFailureOrSuccessOption})
      : assert(query != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(searchPostsFailureOrSuccessOption != null);

  @override
  final StringNotEmpty query;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ServerFailure, DetailFeeds>>
      searchPostsFailureOrSuccessOption;

  @override
  String toString() {
    return 'SearchState(query: $query, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, searchPostsFailureOrSuccessOption: $searchPostsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.searchPostsFailureOrSuccessOption,
                    searchPostsFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.searchPostsFailureOrSuccessOption,
                    searchPostsFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(searchPostsFailureOrSuccessOption);

  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {@required
          StringNotEmpty query,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, DetailFeeds>>
              searchPostsFailureOrSuccessOption}) = _$_SearchState;

  @override
  StringNotEmpty get query;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ServerFailure, DetailFeeds>>
      get searchPostsFailureOrSuccessOption;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
