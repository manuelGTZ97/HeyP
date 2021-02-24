import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class SettingsItem extends StatelessWidget {
  final String title;
  final Function onTap;

  const SettingsItem({
    Key key,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 17,
          horizontal: 21,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontSize: 17),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kColorGrey.withOpacity(0.6),
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
