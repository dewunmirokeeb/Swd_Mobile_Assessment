import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/Authentication/screens/verify_account_screen.dart';
import 'package:swd_mobile_assessment/features/Authentication/widgets/authentication_page_appbar.dart';
import 'package:swd_mobile_assessment/features/Authentication/widgets/page_indicator.dart';
import 'package:swd_mobile_assessment/features/components/custom_button.dart';
import 'package:swd_mobile_assessment/features/components/custom_text_field.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AUthPageAppBar(
              showAction: true,
            ),
            Text(
              "Create an account",
              style: TextStyle(
                fontSize: 36,
                color: AppColors.whiteColor,
              ),
            ),
            Expanded(
              child: SignUpForm(),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Row(
            children: [
              Expanded(
                child: CustomTextField(
                  hintText: "first name",
                  labelText: "First name",
                ),
              ),
              Expanded(
                child: CustomTextField(
                  hintText: "last name",
                  labelText: "Last name",
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          const CustomTextField(
            hintText: "phone number",
            labelText: "Phone number",
          ),
          const SizedBox(height: 30),
          CustomTextField(
            hintText: "Enter email address",
            labelText: "Email address",
            controller: emailController,
          ),
          const SizedBox(height: 30),
          const CustomTextField(
            hintText: "Enter password",
            labelText: "Create Password",
          ),
          const SizedBox(height: 30),
          const CustomTextField(
            hintText: "Enter Referral Code",
            labelText: "Referral Code (Optional)",
          ),
          const SizedBox(height: 40),
          CustomButton(
            buttonText: "Next",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      VerifyAccountScreen(emailAddress: emailController.text),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          const PageIndicator(pageIndex: 0),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
