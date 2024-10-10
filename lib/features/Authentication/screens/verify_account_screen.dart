import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/Authentication/widgets/authentication_page_appbar.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({required this.emailAddress, super.key});
  final String emailAddress;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AUthPageAppBar(),
            // Expanded(
            //   child: SignUpForm(),
            // ),
          ],
        ),
      ),
    );
  }
}
