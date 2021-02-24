import 'package:flutter/material.dart';

import 'notification_list_item_shimmer.dart';

class NotificationListShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return NotificationListItemShimmer();
      },
    );
  }
}
