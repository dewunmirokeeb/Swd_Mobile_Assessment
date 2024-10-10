import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/main_page_navigation/widget/home_screen_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PageHeader(),
          SizedBox(height: 40),
          ActionCard(),
          SizedBox(height: 40),
          UpdateCard(),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
