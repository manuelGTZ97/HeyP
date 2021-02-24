import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/post/post_bloc.dart';
import '../../../injection.dart';
import '../../components/no_internet.dart';
import '../../components/post_list_item.dart';
import '../../components/post_list_shimmer.dart';

class PostPage extends StatefulWidget {
  final int id;

  const PostPage({Key key, @required this.id}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) =>
            getIt<PostBloc>()..add(PostEvent.getPost(widget.id)),
        child: _postWidget(),
      ),
    );
  }

  BlocConsumer _postWidget() {
    return BlocConsumer<PostBloc, PostState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.getPostFailureOrSuccessOption.fold(
          () => PostListShimmer(
            length: 1,
          ),
          (either) => either.fold(
            (failure) => NoInternet(
              msg: failure.map(
                serverError: (_) => null,
                apiFailure: (e) => e.msg,
              ),
              onPressed: null, //_refresh,
            ),
            (success) => PostListItem(
              feed: success.post,
            ),
          ),
        );
      },
    );
  }
}
