import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/feed/feed_bloc.dart';
import '../../../domain/entities/feed.dart';
import '../../../injection.dart';
import '../../components/no_internet.dart';
import '../../components/no_posts_widget.dart';
import '../../components/post_list_item.dart';
import '../../components/post_list_shimmer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  ScrollController _scrollController = ScrollController();
  FeedBloc _feedBloc;

  List<Feed> _feeds = [];
  int _offset = 0;
  bool _hasReachedEndOfResults = false;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _initScrollListener();
  }

  Future<bool> _refresh() {
    _feeds.clear();
    _offset = 0;
    _hasReachedEndOfResults = false;
    _feedBloc.add(FeedEvent.getUserFeeds(_offset));
    _loading = true;
    return Future.value(true);
  }

  void _initScrollListener() {
    _scrollController
      ..addListener(() {
        var triggerFetchMoreSize =
            0.9 * _scrollController.position.maxScrollExtent;

        if (!_loading &&
            !_hasReachedEndOfResults &&
            _scrollController.position.pixels > triggerFetchMoreSize) {
          context.bloc<FeedBloc>().add(FeedEvent.getUserFeeds(_offset));
          _loading = true;
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RefreshIndicator(
      key: _refreshIndicatorKey,
      onRefresh: _refresh,
      child: BlocProvider(
        create: (context) =>
            _feedBloc = getIt<FeedBloc>()..add(FeedEvent.getUserFeeds(_offset)),
        child: BlocBuilder<FeedBloc, FeedState>(
          builder: (context, state) {
            return state.userFeedsFailureOrSuccess.fold(
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
                    ? _noFeeds()
                    : _feedsList(success.feeds),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _noFeeds() {
    return NoPostsWidget(
      onPressed: _refresh,
      message: 'no_results_try_to_add_posts_and_follow_users'.tr(),
    );
  }

  Widget _feedsList(List<Feed> feeds) {
    return ListView.separated(
      controller: _scrollController,
      physics: AlwaysScrollableScrollPhysics(),
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

  @override
  bool get wantKeepAlive => true;
}
