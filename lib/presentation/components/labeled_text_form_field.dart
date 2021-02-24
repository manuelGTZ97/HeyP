import 'package:flutter/material.dart';

import '../../infrastructure/core/pref_manager.dart';
import '../utils/constants.dart';

class LabeledTextFormField extends StatelessWidget {
  final String title;
  final double padding;
  final TextEditingController controller;
  final String hintText;
  final String initialValue;
  final bool obscureText;
  final bool enabled;
  final String error;
  final TextInputType keyboardType;
  final Function onChanged;
  final Function validator;

  const LabeledTextFormField({
    Key key,
    @required this.title,
    this.padding,
    this.controller,
    this.hintText,
    this.initialValue,
    this.obscureText,
    this.enabled,
    this.error,
    this.keyboardType,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Prefs.getBool(Prefs.DARKTHEME, def: false);

    return Padding(
      padding: EdgeInsets.only(bottom: padding ?? 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$title:',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          TextFormField(
            keyboardType: keyboardType,
            obscureText: obscureText ?? false,
            controller: controller,
            enabled: enabled ?? true,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 16,
                color: isDark
                    ? Colors.white.withOpacity(0.5)
                    : kColorGrey.withOpacity(0.5),
              ),
              errorText: error ?? null,
            ),
            style: TextStyle(
              fontSize: 16,
              color:
                  isDark ? Colors.white.withOpacity(0.87) : Color(0xff575757),
            ),
            initialValue: initialValue,
            cursorColor: kColorPink,
            cursorWidth: 1,
            onChanged: onChanged,
            validator: validator,
          ),
        ],
      ),
    );
  }
}
