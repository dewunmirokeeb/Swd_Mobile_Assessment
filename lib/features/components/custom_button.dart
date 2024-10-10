import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.buttonText,
    required this.onPressed,
    super.key,
  });
  final Function() onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              colors: [
                AppColors.orangeColor,
                AppColors.orangeColor,
                AppColors.orangeColor,
                AppColors.lightOrangeColor,
              ],
            ),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: const TextStyle(
                color: AppColors.whiteColor,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
