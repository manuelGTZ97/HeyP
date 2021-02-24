import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/news/news_bloc.dart';
import '../../../domain/entities/news.dart';
import '../../components/no_internet.dart';
import '../../routes/routes.dart';
import 'widgets/news_list_item_widget.dart';
import 'widgets/news_shimmer.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage>
    with AutomaticKeepAliveClientMixin<NewsPage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  Future<bool> _refresh() {
    context.bloc<NewsBloc>().add(NewsEvent.getNews());
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('news'.tr()),
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _refresh,
        child: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            return state.newsFailureOrSuccess.fold(
              () => NewsShimmer(),
              (either) => either.fold(
                (failure) => NoInternet(
                  msg: failure.map(
                    serverError: (_) => null,
                    apiFailure: (e) => e.msg,
                  ),
                  onPressed: _refresh,
                ),
                (success) => _newsWidget(success.news),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _newsWidget(List<News> news) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
      padding: EdgeInsets.all(15),
      itemCount: news.length,
      itemBuilder: (context, index) {
        return NewsListItemWidget(
          news: news[index],
          onTap: () {
            Navigator.of(context)
                .pushNamed(Routes.newsDetails, arguments: news[index]);
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
