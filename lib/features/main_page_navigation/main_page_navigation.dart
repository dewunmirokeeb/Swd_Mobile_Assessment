import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swd_mobile_assessment/features/main_page_navigation/screens/home_screen.dart';
import 'package:swd_mobile_assessment/features/main_page_navigation/screens/referrals_screen.dart';
import 'package:swd_mobile_assessment/features/main_page_navigation/screens/service_screen.dart';
import 'package:swd_mobile_assessment/features/main_page_navigation/screens/settings_screen.dart';
import 'package:swd_mobile_assessment/features/main_page_navigation/screens/statistics_screen.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';
import 'package:swd_mobile_assessment/features/utils/svg_icon.dart';

class MainPageNavigationScreen extends StatefulWidget {
  const MainPageNavigationScreen({super.key});

  @override
  State<MainPageNavigationScreen> createState() =>
      _MainPageNavigationScreenState();
}

class _MainPageNavigationScreenState extends State<MainPageNavigationScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;
  changeIndex(int index) {
    currentIndex = index;
    pageController.jumpToPage(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: const [
            HomeScreen(),
            ServicesScreen(),
            StatisticsScreen(),
            ReferralsScreen(),
            SettingsScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.greyColor,
        onTap: (value) {
          changeIndex(value);
        },
        backgroundColor: AppColors.blackColor,
        type: BottomNavigationBarType.fixed,
        items: bottomNavigationBarItems,
      ),
    );
  }
}

List<BottomNavigationBarItem> bottomNavigationBarItems =
    SvgIcon.bottomNavIconDatas.map(
  (map) {
    String selectedIconPath = map["iconPath"];
    String unselectedIconPath = map["iconPath"];
    String label = map["title"];
    return BottomNavigationBarItem(
      activeIcon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: SvgPicture.asset(
          selectedIconPath,
          colorFilter: const ColorFilter.mode(
            AppColors.whiteColor,
            BlendMode.srcIn,
          ),
          width: 24,
        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: SvgPicture.asset(
          unselectedIconPath,
          width: 24,
          colorFilter: const ColorFilter.mode(
            AppColors.greyColor,
            BlendMode.srcIn,
          ),
        ),
      ),
      label: label,
    );
  },
).toList();
