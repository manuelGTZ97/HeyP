import 'package:flutter/material.dart';

import 'post_list_item_shimmer.dart';

class PostListShimmer extends StatelessWidget {
  final int length;

  const PostListShimmer({Key key, this.length}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Container(
        height: 10,
      ),
      itemCount: length ?? 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return PostListItemShimmer();
      },
    );
  }
}
