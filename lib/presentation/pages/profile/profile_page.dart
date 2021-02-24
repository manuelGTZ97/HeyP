import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../../domain/entities/feed.dart';
import '../../../domain/entities/user.dart';
import '../../../infrastructure/core/pref_manager.dart';
import '../../../injection.dart';
import '../../components/no_internet.dart';
import '../../components/no_posts_widget.dart';
import '../../components/post_list_item.dart';
import 'widgets/header_widget.dart';
import 'widgets/profile_shimmer.dart';

class ProfilePage extends StatefulWidget {
  final User user;

  const ProfilePage({Key key, this.user}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  ProfileBloc _profileBloc;

  Future<bool> _refresh() {
    print(Prefs.getString(Prefs.ACCESS_TOKEN));
    _profileBloc.add(ProfileEvent.getUserinfo(widget.user.id));
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Prefs.isDark() ? Colors.black : Colors.grey[100],
      appBar: AppBar(
        title: Text(
          widget.user != null ? widget.user.username : Prefs.getUsername(),
        ),
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _refresh,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: BlocProvider(
            create: (context) => _profileBloc = getIt<ProfileBloc>()
              ..add(ProfileEvent.getUserinfo(
                  widget.user != null ? widget.user.id : Prefs.getID())),
            child: BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return state.getUserInfoFailureOrSuccessOption.fold(
                  () => ProfileShimmer(),
                  (either) => either.fold(
                    (failure) => NoInternet(
                      onPressed: _refresh,
                    ),
                    (success) {
                      User user = success.user;
                      List<Feed> feeds = user.feeds;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeaderWidget(
                            user: user,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          feeds.isEmpty ? _noFeeds() : _feedsList(feeds),
                        ],
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _noFeeds() {
    return NoPostsWidget(
      onPressed: _refresh,
      message: 'this_user_didnt_post_anything_yet'.tr(),
    );
  }

  Widget _feedsList(List<Feed> feeds) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
      itemCount: feeds.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return PostListItem(
          feed: feeds[index],
        );
      },
    );
  }
}
