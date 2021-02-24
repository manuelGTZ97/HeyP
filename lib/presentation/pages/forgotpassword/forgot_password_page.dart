import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/changepassword/change_password_bloc.dart';
import '../../../infrastructure/core/pref_manager.dart';
import '../../../injection.dart';
import '../../components/custom_button.dart';
import '../../components/server_error.dart';
import '../../components/toast.dart';
import '../../components/waiting_dialog.dart';
import '../../routes/routes.dart';
import '../../utils/constants.dart';
import 'widgets/email_input_widget.dart';
import 'widgets/password_widget.dart';
import 'widgets/pin_confirmation_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  int _step = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: BlocProvider(
                      create: (context) => getIt<ChangePasswordBloc>(),
                      child:
                          BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
                        listener: (context, state) {
                          if (_step == 0) {
                            state.sendCodeFailureOrSuccessOption.fold(
                              () => null,
                              (either) {
                                Navigator.pop(context);
                                either.fold(
                                  (failure) {
                                    failure.map(
                                      serverError: (_) => serverError(),
                                      apiFailure: (e) => showToast(e.msg),
                                    );
                                  },
                                  (success) {
                                    context.bloc<ChangePasswordBloc>().add(
                                        ChangePasswordEvent.tokenChanged(
                                            success.message));
                                    _step++;
                                  },
                                );
                              },
                            );
                          }

                          if (_step == 1) {
                            state.verifyCodeFailureOrSuccessOption.fold(
                              () => null,
                              (either) {
                                Navigator.pop(context);
                                either.fold(
                                  (failure) {
                                    failure.map(
                                      serverError: (_) => serverError(),
                                      apiFailure: (e) => showToast(e.msg),
                                    );
                                  },
                                  (success) {
                                    context.bloc<ChangePasswordBloc>().add(
                                        ChangePasswordEvent.tokenChanged(
                                            success.message));
                                    _step++;
                                  },
                                );
                              },
                            );
                          }

                          if (_step == 2) {
                            state.resetPasswordFailureOrSuccessOption.fold(
                              () => null,
                              (either) {
                                Navigator.pop(context);
                                either.fold(
                                  (failure) {
                                    failure.map(
                                      serverError: (_) => serverError(),
                                      apiFailure: (e) => showToast(e.msg),
                                    );
                                  },
                                  (success) {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        Routes.login,
                                        (Route<dynamic> route) => false);
                                    showToast('password_changed'.tr());
                                  },
                                );
                              },
                            );
                          }

                          if (state.isSubmitting) {
                            showWaitingDialog(context);
                          }
                        },
                        builder: (context, state) {
                          return _bodyWidget(context);
                        },
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Column _bodyWidget(BuildContext context) {
    bool isDark = Prefs.getBool(Prefs.DARKTHEME, def: false);
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 20,
          ),
        ),
        Image.asset(
          'assets/images/forgot_password.png',
          width: 153,
          height: 153,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'forgot_your_password'.tr(),
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontSize: 25,
              ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'forgot_your_password_body'.tr(),
          style: TextStyle(
            color: isDark ? Colors.white.withOpacity(0.5) : kColorGrey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        Expanded(
          flex: 3,
          child: SizedBox(
            height: 50,
          ),
        ),
        Form(
          //autovalidate: autovalidate,
          child: _step == 0
              ? EmailInputWidget()
              : _step == 1
                  ? PinConfirmationWidget(
                      onPressed: () => _step = 0,
                    )
                  : PasswordWidget(),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 52,
          width: double.infinity,
          child: CustomButton(
            title: 'send'.tr(),
            onPressed: () {
              switch (_step) {
                case 0:
                  context
                      .bloc<ChangePasswordBloc>()
                      .add(ChangePasswordEvent.sendCode());
                  break;
                case 1:
                  context
                      .bloc<ChangePasswordBloc>()
                      .add(ChangePasswordEvent.verifyCode());
                  break;
                case 2:
                  context
                      .bloc<ChangePasswordBloc>()
                      .add(ChangePasswordEvent.updatePassword());
                  break;
              }
            },
          ),
        ),
        SizedBox(
          height: kBottomPadding,
        ),
      ],
    );
  }
}
