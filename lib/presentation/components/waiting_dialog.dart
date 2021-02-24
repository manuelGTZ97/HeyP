import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'custom_circular_progress.dart';

showWaitingDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        // child: WaitCircularProgress(title: 'Please wait'),
        child: Padding(
          padding: EdgeInsets.only(top: 49, bottom: 39),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CustomCircularProgress(
                size: 86,
                color: kColorPrimary,
              ),
              SizedBox(
                height: 41,
              ),
              Text(
                'please_wait'.tr(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
