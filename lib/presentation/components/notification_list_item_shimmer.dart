import 'package:flutter/material.dart';
import '../../infrastructure/core/pref_manager.dart';
import '../utils/constants.dart';
import 'package:shimmer/shimmer.dart';

class NotificationListItemShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Prefs.isDark() ? kColorPrimaryDark : Colors.white,
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).primaryColor,
        highlightColor: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
          child: Row(
            children: <Widget>[
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 8,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 200,
                      height: 8,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
