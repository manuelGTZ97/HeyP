import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heyp/infrastructure/core/pref_manager.dart';

import '../../../application/search/search_bloc.dart';
import '../../../domain/entities/feed.dart';
import '../../../injection.dart';
import '../../components/no_internet.dart';
import '../../components/no_posts_widget.dart';
import '../../components/post_list_item.dart';
import '../../components/post_list_shimmer.dart';

class SearchPage extends StatefulWidget {
  final String query;
  final bool showAppBar;

  const SearchPage({
    Key key,
    @required this.query,
    @required this.showAppBar,
  }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  SearchBloc _bloc;

  Future<bool> _refresh() {
    _bloc.add(SearchEvent.searchPosts());
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Prefs.isDark() ? Colors.black : Colors.grey[100],
      appBar: widget.showAppBar
          ? AppBar(
              title: Text(
                '${'search'.tr()} "${widget.query.toLowerCase().trim()}"',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          : AppBar(
              toolbarHeight: 0,
            ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _refresh,
        child: BlocProvider(
          create: (context) => _bloc = getIt<SearchBloc>()
            ..add(SearchEvent.queryChanged(widget.query))
            ..add(SearchEvent.searchPosts()),
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return state.searchPostsFailureOrSuccessOption.fold(
                () => PostListShimmer(),
                (either) => either.fold(
                  (failure) => NoInternet(
                    msg: failure.map(
                      serverError: (_) => null,
                      apiFailure: (e) => e.msg,
                    ),
                    onPressed: _refresh,
                  ),
                  (success) => success.feeds.isEmpty
                      ? _noSearchResults()
                      : _feedsList(success.feeds),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _noSearchResults() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: NoPostsWidget(
        onPressed: _refresh,
        message: 'no_posts_so_far_try_again_later'.tr(),
      ),
    );
  }

  Widget _feedsList(List<Feed> feeds) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
      itemCount: feeds.length,
      itemBuilder: (context, index) {
        return PostListItem(
          feed: feeds[index],
        );
      },
    );
  }
}
