import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/changepassword/change_password_bloc.dart';
import '../../../components/labeled_text_form_field.dart';

class InputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        LabeledTextFormField(
          title: 'current_password'.tr(),
          hintText: '* * * * * *',
          obscureText: true,
          onChanged: (value) => context
              .bloc<ChangePasswordBloc>()
              .add(ChangePasswordEvent.passwordChanged(value)),
          validator: (_) =>
              context.bloc<ChangePasswordBloc>().state.password.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => 'short_password'.tr(),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
        SizedBox(
          height: 24,
        ),
        LabeledTextFormField(
          title: 'new_password'.tr(),
          hintText: '* * * * * *',
          obscureText: true,
          onChanged: (value) => context
              .bloc<ChangePasswordBloc>()
              .add(ChangePasswordEvent.newPasswordChanged(value)),
          validator: (_) =>
              context.bloc<ChangePasswordBloc>().state.newPassword.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => 'short_password'.tr(),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
        SizedBox(
          height: 24,
        ),
        LabeledTextFormField(
          title: 'confirm_password'.tr(),
          hintText: '* * * * * *',
          obscureText: true,
          onChanged: (value) => context
              .bloc<ChangePasswordBloc>()
              .add(ChangePasswordEvent.confirmPasswordChanged(value)),
          validator: (_) => context
              .bloc<ChangePasswordBloc>()
              .state
              .confirmPassword
              .value
              .fold(
                (f) => f.maybeMap(
                  shortPassword: (_) => 'short_password'.tr(),
                  orElse: () => null,
                ),
                (_) => null,
              ),
        )
      ],
    );
  }
}
