import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'toast.dart';

class NoInternet extends StatelessWidget {
  final String msg;
  final Function onPressed;

  const NoInternet({
    Key key,
    this.msg,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (msg != null) showToast(msg);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/icon_wifi.png',
              width: 150,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            'whoops'.tr(),
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'verify_internet_connection'.tr(),
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.refresh,
              size: 32,
              color: kColorPrimary,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text('retry'.tr()),
        ],
      ),
    );
  }
}
