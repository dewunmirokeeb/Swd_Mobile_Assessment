import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/components/custom_text_button.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';

class AUthPageAppBar extends StatelessWidget {
  const AUthPageAppBar({
    this.showAction,
    super.key,
  });
  final bool? showAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Row(
              children: [
                Icon(
                  Icons.chevron_left,
                  color: AppColors.greyColor,
                  size: 35,
                ),
                SizedBox(width: 5),
                Text(
                  "Back",
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          if (showAction == true)
            CustomTextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              buttonText: "Sign in instead",
              fontSize: 16,
              color: AppColors.orangeColor,
              textDecoration: TextDecoration.underline,
            )
        ],
      ),
    );
  }
}
