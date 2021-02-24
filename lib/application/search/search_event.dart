part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.queryChanged(String queryStr) = QueryChanged;
  const factory SearchEvent.searchPosts() = SearchPosts;
  const factory SearchEvent.search() = Search;
  const factory SearchEvent.searchCategories() = SearchCategories;
}
