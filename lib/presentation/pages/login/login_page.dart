import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/login/login_bloc.dart';
import '../../../domain/entities/detail_user.dart';
import '../../../domain/entities/user.dart';
import '../../../infrastructure/core/pref_manager.dart';
import '../../../injection.dart';
import '../../components/custom_button_icon.dart';
import '../../components/server_error.dart';
import '../../components/toast.dart';
import '../../components/waiting_dialog.dart';
import '../../routes/routes.dart';
import '../../utils/app_utils.dart';
import '../../utils/constants.dart';
import 'widgets/input_widget.dart';

class LoginPage extends StatelessWidget {
  void _saveUserData(DetailUser success) async {
    User user = success.user;

    Prefs.setString(Prefs.ACCESS_TOKEN, success.accessToken);
    Prefs.setInt(Prefs.ID, user.id);
    Prefs.setString(Prefs.USERNAME, user.username);
    Prefs.setString(Prefs.FIRST_NAME, user.firstName);
    Prefs.setString(Prefs.LAST_NAME, user.lastName);
    Prefs.setString(Prefs.EMAIL, user.email);
    Prefs.setString(Prefs.PHONE, user.phone);
    Prefs.setString(Prefs.AVATAR, user.avatar);

    Prefs.setBool(Prefs.LOGIN_STATUS, true);

    AppUtils.updateGcmToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: BlocProvider(
                      create: (context) => getIt<LoginBloc>(),
                      child: BlocConsumer<LoginBloc, LoginState>(
                        listenWhen: (p, c) => p.isSubmitting != c.isSubmitting,
                        listener: (context, state) {
                          state.authFailureOrSuccessOption.fold(
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
                                  _saveUserData(success);
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      Routes.home,
                                      (Route<dynamic> route) => false);
                                },
                              );
                            },
                          );

                          if (state.isSubmitting) {
                            showWaitingDialog(context);
                          }
                        },
                        builder: (context, state) {
                          return _bodyWidget(context, state.showErrorMessages);
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

  Column _bodyWidget(BuildContext context, bool autovalidate) {
    return Column(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 30,
          ),
        ),
        Image.asset(
          'assets/images/logo.png',
          width: 153,
          height: 153,
        ),
        Expanded(
          child: SizedBox(
            height: 30,
          ),
        ),
        Form(
          autovalidateMode: autovalidate
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: InputWidget(),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: CustomButtonIcon(
            title: 'login'.tr(),
            icon: 'icon_login',
            iconSize: 19,
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              context
                  .bloc<LoginBloc>()
                  .add(LoginEvent.signInWithEmailAndPasswordPressed());
            },
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          child: CustomButtonIcon(
            title: 'login_with_facebook'.tr(),
            icon: 'icon_facebook',
            color: Color(0xff3c5a99),
            iconSize: 19,
            onPressed: () {
              //Navigator.of(context).pushNamed(Routes.home);
            },
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 30,
          ),
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Text(
              'you_dont_have_any_account'.tr(),
              style: TextStyle(
                color: Color(0xff757575),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(Routes.signup),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'register'.tr(),
                  style: TextStyle(
                    color: kColorPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
