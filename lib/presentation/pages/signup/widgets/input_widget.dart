import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/signup/signup_bloc.dart';
import '../../../components/labeled_phone_input.dart';
import '../../../components/labeled_text_form_field.dart';

class InputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        LabeledTextFormField(
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
                title: 'phone_number'.tr(),
                hintText: '555123456',
                onChanged: (value) => context.bloc<SignUpBloc>().add(
                    SignUpEvent.phoneChanged(/*'+213' +*/
                        (value.toString().startsWith('0')
                            ? value.toString().substring(1)
                            : value))),
              ),
            ),
          ],
        ),
        LabeledTextFormField(
          title: 'email'.tr(),
          hintText: 'john.doe@example.com',
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) =>
              context.bloc<SignUpBloc>().add(SignUpEvent.emailChanged(value)),
          validator: (_) =>
              context.bloc<SignUpBloc>().state.emailAddress.value.fold(
                    (f) => f.maybeMap(
                      invalidEmail: (_) => 'invalid_email'.tr(),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
        LabeledTextFormField(
          title: 'password'.tr(),
          hintText: '* * * * * *',
          obscureText: true,
          onChanged: (value) => context
              .bloc<SignUpBloc>()
              .add(SignUpEvent.passwordChanged(value)),
          validator: (_) =>
              context.bloc<SignUpBloc>().state.password.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => 'short_password'.tr(),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
        LabeledTextFormField(
          title: 'confirm_password'.tr(),
          hintText: '* * * * * *',
          obscureText: true,
          onChanged: (value) => context
              .bloc<SignUpBloc>()
              .add(SignUpEvent.confirmPasswordChanged(value)),
          validator: (_) =>
              context.bloc<SignUpBloc>().state.confirmPassword.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => 'short_password'.tr(),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ],
    );
  }
}
