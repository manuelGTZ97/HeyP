import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/signup/signup_bloc.dart';
import '../../../injection.dart';
import '../../components/custom_button.dart';
import '../../components/toast.dart';
import '../../components/waiting_dialog.dart';
import '../../utils/constants.dart';
import 'widgets/avatar_widget.dart';
import 'widgets/input_widget.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
                          state.actionFailureOrSuccessOption.fold(
                            () => null,
                            (either) {
                              Navigator.pop(context);
                              either.fold(
                                (failure) {
                                  failure.map(
                                    serverError: (_) => null,
                                    apiFailure: (e) => showToast(e.msg),
                                  );
                                },
                                (success) {
                                  Navigator.pop(context);
                                  showToast(success.message);
                                  //_saveUserData(success);
                                  // Navigator.of(context)
                                  //     .pushReplacementNamed(Routes.home);
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
        AvatarWidget(),
        Expanded(
          child: SizedBox(
            height: 50,
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
          height: 52,
          width: double.infinity,
          child: CustomButton(
            title: 'register'.tr(),
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              context.bloc<SignUpBloc>().add(SignUpEvent.registerPressed());
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
              'already_have_any_account'.tr(),
              style: TextStyle(
                color: Color(0xff757575),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'login'.tr(),
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
          height: kBottomPadding,
        ),
      ],
    );
  }
}
