import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../infrastructure/core/pref_manager.dart';
import '../../../utils/app_utils.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(19, 18, 0, 18),
      child: Row(
        children: <Widget>[
          ClipOval(
            child: CachedNetworkImage(
              imageUrl: AppUtils.getAvatar(),
              width: 44,
              height: 44,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) {
                return Image.asset(
                  'assets/images/empty_avatar.png',
                  width: 44,
                  height: 44,
                );
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              Prefs.getUsername(),
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
