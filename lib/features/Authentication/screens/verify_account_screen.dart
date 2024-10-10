import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/Authentication/widgets/authentication_page_appbar.dart';
import 'package:swd_mobile_assessment/features/Authentication/widgets/page_indicator.dart';
import 'package:swd_mobile_assessment/features/components/custom_button.dart';
import 'package:swd_mobile_assessment/features/components/custom_otp_text_field.dart';
import 'package:swd_mobile_assessment/features/main_page_navigation/main_page_navigation.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({required this.emailAddress, super.key});
  final String emailAddress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AUthPageAppBar(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Verify your email",
                style: TextStyle(
                  fontSize: 36,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Please enter the OTP sent to ",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.greyColor,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                emailAddress,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const OtpField(),
            const Spacer(),
            CustomButton(
              buttonText: "Verify email",
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const MainPageNavigationScreen();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 40),
            const PageIndicator(pageIndex: 1),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
