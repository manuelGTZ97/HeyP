import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/changepassword/change_password_bloc.dart';
import '../../../components/labeled_text_form_field.dart';

class EmailInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LabeledTextFormField(
      title: 'email'.tr(),
      hintText: 'john.doe@example.com',
      onChanged: (value) => context
          .bloc<ChangePasswordBloc>()
          .add(ChangePasswordEvent.emailChanged(value)),
      validator: (_) =>
          context.bloc<ChangePasswordBloc>().state.email.value.fold(
                (f) => f.maybeMap(
                  invalidEmail: (_) => 'invalid_email'.tr(),
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }
}
