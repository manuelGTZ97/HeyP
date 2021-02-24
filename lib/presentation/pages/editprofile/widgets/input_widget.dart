import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/signup/signup_bloc.dart';
import '../../../../infrastructure/core/pref_manager.dart';
import '../../../components/labeled_phone_input.dart';
import '../../../components/labeled_text_form_field.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final _username = Prefs.getString(Prefs.USERNAME, def: '');
  final _firstName = Prefs.getString(Prefs.FIRST_NAME, def: '');
  final _lastName = Prefs.getString(Prefs.LAST_NAME, def: '');
  final _phone = Prefs.getString(Prefs.PHONE, def: '');

  @override
  void initState() {
    super.initState();
    context.bloc<SignUpBloc>().add(SignUpEvent.usernameChanged(_username));
    context.bloc<SignUpBloc>().add(SignUpEvent.firstNameChanged(_firstName));
    context.bloc<SignUpBloc>().add(SignUpEvent.lastNameChanged(_lastName));
    context.bloc<SignUpBloc>().add(SignUpEvent.phoneChanged(_phone));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        LabeledTextFormField(
          initialValue: _username,
          title: 'username'.tr(),
          hintText: 'JohnD',
          onChanged: (value) => context
              .bloc<SignUpBloc>()
              .add(SignUpEvent.usernameChanged(value)),
          validator: (_) =>
              context.bloc<SignUpBloc>().state.username.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'invalid_username'.tr(),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
        LabeledTextFormField(
          initialValue: _firstName,
          title: 'first_name'.tr(),
          hintText: 'John',
          onChanged: (value) => context
              .bloc<SignUpBloc>()
              .add(SignUpEvent.firstNameChanged(value)),
          validator: (_) =>
              context.bloc<SignUpBloc>().state.firstName.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'invalid_first_name'.tr(),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
        LabeledTextFormField(
          initialValue: _lastName,
          title: 'last_name'.tr(),
          hintText: 'Doe',
          onChanged: (value) => context
              .bloc<SignUpBloc>()
              .add(SignUpEvent.lastNameChanged(value)),
          validator: (_) =>
              context.bloc<SignUpBloc>().state.lastName.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'invalid_last_name'.tr(),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: LabeledPhoneInput(
                keyboardType: TextInputType.phone,
                initialValue: _phone,
                title: 'phone_number'.tr(),
                hintText: '781348677',
                onChanged: (value) => context.bloc<SignUpBloc>().add(
                    SignUpEvent.phoneChanged('+213' +
                        (value.toString().startsWith('0')
                            ? value.toString().substring(1)
                            : value))),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
