import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class Splash2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              kColorPrimary,
              kColorPink,
            ]),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 20,
            ),
          ),
          Image.asset(
            'assets/images/logo.png',
            color: Colors.white,
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
                backgroundColor: kColorPink,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'copyright'.tr(),
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              color: Colors.white,
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
