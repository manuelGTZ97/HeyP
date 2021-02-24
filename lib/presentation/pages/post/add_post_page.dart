import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/post/post_bloc.dart';
import '../../../infrastructure/core/pref_manager.dart';
import '../../../injection.dart';
import '../../components/toast.dart';
import '../../components/waiting_dialog.dart';
import '../../utils/constants.dart';
import 'widgets/header_widget.dart';
import 'widgets/image_widget.dart';
import 'widgets/publish_button_widget.dart';

class AddPostPage extends StatefulWidget {
  @override
  _AddPostPageState createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('new_post'.tr()),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: BlocProvider(
                  create: (context) => getIt<PostBloc>(),
                  child: BlocConsumer<PostBloc, PostState>(
                    //listenWhen: (p, c) => p.isSubmitting != c.isSubmitting,
                    listener: (context, state) {
                      state.addPostFailureOrSuccessOption.fold(
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
                              Navigator.of(context).pop(true);
                            },
                          );
                        },
                      );

                      if (state.isSubmitting) {
                        showWaitingDialog(context);
                      }
                    },
                    builder: (context, state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          HeaderWidget(),
                          TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'write_something_here'.tr(),
                              hintStyle: TextStyle(
                                color: Prefs.isDark()
                                    ? Colors.white.withOpacity(0.5)
                                    : kColorGrey.withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 14,
                                horizontal: 10,
                              ),
                            ),
                            style: Theme.of(context).textTheme.subtitle1,
                            minLines: 1,
                            maxLines: 5,
                            onChanged: (value) => context
                                .bloc<PostBloc>()
                                .add(PostEvent.bodyChanged(value)),
                          ),
                          ImageWidget(),
                          Expanded(
                            child: SizedBox(
                              height: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: PublishButtonWidget(
                              onPressed: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                context
                                    .bloc<PostBloc>()
                                    .add(PostEvent.addPost());
                              },
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
