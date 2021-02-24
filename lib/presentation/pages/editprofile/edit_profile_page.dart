import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/signup/signup_bloc.dart';
import '../../../domain/entities/user.dart';
import '../../../infrastructure/core/pref_manager.dart';
import '../../../injection.dart';
import '../../components/custom_button.dart';
import '../../components/server_error.dart';
import '../../components/toast.dart';
import '../../components/waiting_dialog.dart';
import '../../utils/constants.dart';
import 'widgets/avatar_widget.dart';
import 'widgets/input_widget.dart';

class EditProfilePage extends StatelessWidget {
  void _updateUserData(User user) async {
    Prefs.setString(Prefs.USERNAME, user.username);
    Prefs.setString(Prefs.FIRST_NAME, user.firstName);
    Prefs.setString(Prefs.LAST_NAME, user.lastName);
    Prefs.setString(Prefs.PHONE, user.phone);
    Prefs.setString(Prefs.AVATAR, user.avatar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'edit_profile'.tr(),
        ),
      ),
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
                      create: (context) => getIt<SignUpBloc>(),
                      child: BlocConsumer<SignUpBloc, SignUpState>(
                        listenWhen: (p, c) => p.isSubmitting != c.isSubmitting,
                        listener: (context, state) {
                          state.updateUserFailureOrSuccessOption.fold(
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
                                  _updateUserData(success.user);
                                  Navigator.pop(context);
                                  showToast('info_updated'.tr());
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
          flex: 1,
          child: SizedBox(
            height: 20,
          ),
        ),
        AvatarWidget(),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 20,
          ),
        ),
        Form(
          autovalidateMode: autovalidate
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: InputWidget(),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(
            height: 20,
          ),
        ),
        Container(
          height: 52,
          width: double.infinity,
          child: CustomButton(
            title: 'update'.tr(),
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              context
                  .bloc<SignUpBloc>()
                  .add(SignUpEvent.updateProfilePressed());
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
