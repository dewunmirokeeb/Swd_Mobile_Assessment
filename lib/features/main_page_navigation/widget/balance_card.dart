import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({
    super.key,
  });

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  bool showBalance = true;
  toggleShowBalance() {
    showBalance = !showBalance;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "WALLET BALANCE",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "NGN ${showBalance ? "50,000" : "** ***"}",
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                toggleShowBalance();
              },
              icon: Icon(
                showBalance ? Icons.visibility_off : Icons.visibility,
                color: AppColors.whiteColor,
                size: 20,
              ),
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.whiteColor,
          ),
          child: RichText(
            text: const TextSpan(
              text: "Cashback ",
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                  text: "Cashback",
                  style: TextStyle(
                    color: AppColors.orangeColor,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
