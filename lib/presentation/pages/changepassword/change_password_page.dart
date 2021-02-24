import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/changepassword/change_password_bloc.dart';
import '../../../injection.dart';
import '../../components/custom_button.dart';
import '../../components/server_error.dart';
import '../../components/toast.dart';
import '../../components/waiting_dialog.dart';
import '../../utils/constants.dart';
import 'widgets/input_widget.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('change_password'.tr()),
        centerTitle: true,
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
                  child: BlocProvider(
                    create: (context) => getIt<ChangePasswordBloc>(),
                    child:
                        BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
                      listenWhen: (p, c) => p.isSubmitting != c.isSubmitting,
                      listener: (context, state) {
                        state.changePasswordFailureOrSuccessOption.fold(
                          () => null,
                          (either) {
                            Navigator.pop(context);
                            either.fold(
                              (failure) => failure.map(
                                serverError: (_) => serverError(),
                                apiFailure: (e) => showToast(e.msg),
                              ),
                              (success) {
                                Navigator.pop(context, true);
                                showToast(success.message);
                              },
                            );
                          },
                        );

                        if (state.isSubmitting) {
                          showWaitingDialog(context);
                        }
                      },
                      buildWhen: (p, c) =>
                          p.showErrorMessages != c.showErrorMessages,
                      builder: (context, state) => Form(
                        autovalidateMode: state.showErrorMessages
                            ? AutovalidateMode.onUserInteraction
                            : AutovalidateMode.disabled,
                        child: _bodyWidget(context),
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

  Padding _bodyWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 30, 32, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InputWidget(),
          Expanded(
            child: SizedBox(
              height: 24,
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
                    .bloc<ChangePasswordBloc>()
                    .add(ChangePasswordEvent.changePassword());
              },
            ),
          ),
          SizedBox(
            height: kBottomPadding,
          ),
        ],
      ),
    );
  }
}
