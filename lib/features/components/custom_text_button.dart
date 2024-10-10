import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {required this.onPressed,
      required this.buttonText,
      this.textDecoration,
      this.color,
      this.fontSize,
      this.horizontalPadding,
      super.key});

  final Function() onPressed;
  final String buttonText;
  final TextDecoration? textDecoration;
  final Color? color;
  final double? fontSize;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 15),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.centerLeft,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: color ?? AppColors.greyColor,
            decoration: textDecoration,
            fontSize: fontSize ?? 14,
            decorationColor: color ?? AppColors.greyColor,
          ),
        ),
      ),
    );
  }
}
