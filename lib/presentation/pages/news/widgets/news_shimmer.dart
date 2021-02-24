import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'news_list_item_shimmer_widget.dart';

class NewsShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        padding: EdgeInsets.all(15),
        itemCount: 4,
        itemBuilder: (context, index) {
          return NewsListItemShimmerWidget();
        },
      ),
    );
  }
}
