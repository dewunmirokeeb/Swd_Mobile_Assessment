import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/components/custom_button.dart';
import 'package:swd_mobile_assessment/features/components/custom_text_button.dart';
import 'package:swd_mobile_assessment/features/components/custom_text_field.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';
import 'package:swd_mobile_assessment/features/utils/app_string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 120),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.black2Color,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                AppString.welcomeBackText,
                style: TextStyle(
                  fontSize: 36,
                  color: AppColors.whiteColor,
                ),
              ),
              const SizedBox(height: 30),
              const CustomTextField(
                labelText: "Email address",
                hintText: "Enter Email address",
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                labelText: "Password",
                hintText: "Enter Password",
                isPasswordField: true,
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.bottomLeft,
                child: CustomTextButton(
                  onPressed: () {},
                  buttonText: "Forgot password?",
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {},
                buttonText: "Sign in",
              ),
              const SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  text: "i don't have an account ",
                  style: const TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: "Create account",
                      style: const TextStyle(
                        color: AppColors.orangeColor,
                        fontSize: 14,
                      ),
                      mouseCursor: SystemMouseCursors.click,
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Welcome, Sam 👋🏾
