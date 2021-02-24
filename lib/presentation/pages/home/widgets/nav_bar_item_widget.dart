import 'package:flutter/material.dart';

import '../../../../infrastructure/core/pref_manager.dart';

class NavBarItemWidget extends StatelessWidget {
  final Function onTap;
  final String image;
  final bool isSelected;

  const NavBarItemWidget({
    Key key,
    @required this.onTap,
    @required this.image,
    @required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Prefs.getBool(Prefs.DARKTHEME, def: false);
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        child: Center(
          child: (isDark && !isSelected)
              ? image.isEmpty
                  ? Container()
                  : Image.asset(
                      'assets/images/$image.png',
                      height: 25,
                      color: Colors.white,
                    )
              : (!isDark && !isSelected)
                  ? image.isEmpty
                      ? Container()
                      : Image.asset(
                          'assets/images/$image.png',
                          height: 25,
                        )
                  : image.isEmpty
                      ? Container()
                      : Image.asset(
                          'assets/images/${image}_selected.png',
                          height: 25,
                        ),
        ),
      ),
    );
  }
}
