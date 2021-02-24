import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class Splash1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 20,
            ),
          ),
          Image.asset(
            'assets/images/logo.png',
          ),
          Expanded(
            child: SizedBox(
              height: 20,
            ),
          ),
          Container(
            width: 150,
            height: 2,
            child: LinearProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(kColorPink),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'copyright'.tr(),
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              color: kColorGrey,
              fontSize: 10,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
