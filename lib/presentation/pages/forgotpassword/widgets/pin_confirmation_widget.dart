import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../../../../application/changepassword/change_password_bloc.dart';
import '../../../utils/constants.dart';

class PinConfirmationWidget extends StatelessWidget {
  final Function onPressed;

  const PinConfirmationWidget({
    Key key,
    @required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Text(
            'just_sent_verification_code'.tr(),
            style: TextStyle(
              color: kColorGrey,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FittedBox(
            child: PinCodeTextField(
              autofocus: false,
              maxLength: 6,
              wrapAlignment: WrapAlignment.spaceAround,
              keyboardType: TextInputType.number,
              pinBoxRadius: 4,
              pinBoxBorderWidth: 1,
              defaultBorderColor: kColorGrey,
              highlightColor: kColorPrimary,
              onDone: (pin) => context
                  .bloc<ChangePasswordBloc>()
                  .add(ChangePasswordEvent.codeChanged(pin)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'did_not_receive_code'.tr(),
            style: TextStyle(
              color: kColorGrey,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          FlatButton.icon(
            onPressed: () {
              onPressed();
              context
                  .bloc<ChangePasswordBloc>()
                  .add(ChangePasswordEvent.sendCode());
            },
            icon: Icon(
              Icons.refresh_rounded,
              color: kColorGrey,
            ),
            label: Text(
              'resend_code'.tr(),
              style: TextStyle(
                color: kColorGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
