import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/profile/profile_bloc.dart';
import '../../../../infrastructure/core/pref_manager.dart';
import '../../../components/custom_outline_button.dart';
import '../../../utils/constants.dart';

class FollowWidget extends StatefulWidget {
  final int id;
  final int follow;
  const FollowWidget({
    Key key,
    @required this.id,
    @required this.follow,
  }) : super(key: key);
  @override
  _FollowWidgetState createState() => _FollowWidgetState();
}

class _FollowWidgetState extends State<FollowWidget> {
  bool _following;

  @override
  void initState() {
    super.initState();
    _following = widget.follow == 1;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.followUserFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) => _following = !_following,
            (success) {
              if (!success.success) _following = !_following;
            },
          ),
        );
      },
      builder: (context, state) {
        return CustomOutlineButton(
          title: _following ? 'unfollow'.tr() : 'follow'.tr(),
          titleColor: Prefs.isDark() ? Colors.white : kColorPrimaryDark,
          borderColor: Prefs.isDark() ? Colors.white : kColorPrimaryDark,
          onPressed: () {
            context.bloc<ProfileBloc>().add(ProfileEvent.followUser(widget.id));
            setState(() {
              _following = !_following;
            });
          },
        );
      },
    );
  }
}
