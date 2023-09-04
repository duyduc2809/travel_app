import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color boderColor;
  bool? isIcon;

  AppButtons(
      {Key? key,
      this.isIcon = false,
      this.text,
      this.icon,
      required this.color,
      required this.backgroundColor,
      required this.size,
      required this.boderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: boderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: AppColors.buttonBackground),
      child: isIcon == false
          ? AppText(
              text: text!,
              color: Colors.black,
            )
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}
