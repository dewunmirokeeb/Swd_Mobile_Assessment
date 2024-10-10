import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: const BoxDecoration(
        color: AppColors.lightOrangeColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "MONIEPOINT",
            style: TextStyle(
              color: AppColors.whiteColor,
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "8192017482",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Icon(
                Icons.copy,
                color: AppColors.whiteColor,
                size: 15,
              )
            ],
          ),
          SizedBox(height: 5),
          Text(
            "Deposit Fee: N200",
            style: TextStyle(
              color: AppColors.whiteColor,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
