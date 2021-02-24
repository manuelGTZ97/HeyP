import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/login/login_bloc.dart';
import '../../../components/labeled_text_form_field.dart';
import '../../../routes/routes.dart';

class InputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        LabeledTextFormField(
          title: 'email'.tr(),
          hintText: 'john.doe@example.com',
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) => context
              .bloc<LoginBloc>()
              .add(LoginEvent.emailChanged(value.trim())),
          validator: (_) =>
              context.bloc<LoginBloc>().state.emailAddress.value.fold(
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
          onChanged: (value) =>
              context.bloc<LoginBloc>().add(LoginEvent.passwordChanged(value)),
          validator: (_) => context.bloc<LoginBloc>().state.password.value.fold(
                (f) => f.maybeMap(
                  shortPassword: (_) => 'short_password'.tr(),
                  orElse: () => null,
                ),
                (_) => null,
              ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            InkWell(
              onTap: () => Navigator.pushNamed(context, Routes.forgotPassword),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'forgot_password'.tr(),
                  style:
                      Theme.of(context).textTheme.button.copyWith(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
