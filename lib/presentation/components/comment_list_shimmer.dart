import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'comment_list_item_shimmer.dart';

class CommentListShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).primaryColor,
      highlightColor: Colors.grey[100],
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return CommentListItemShimmer();
        },
      ),
    );
  }
}
