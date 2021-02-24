import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'message_list_item_shimmer.dart';

class MessageListShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).primaryColor,
      highlightColor: Colors.grey[100],
      child: ListView.builder(
        itemCount: 20,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return MessageListItemShimmer();
        },
      ),
    );
  }
}
