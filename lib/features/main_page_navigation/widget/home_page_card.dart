import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';

class HomePageIconButton extends StatelessWidget {
  const HomePageIconButton({
    required this.iconPath,
    super.key,
  });

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.greyColor),
      ),
      child: SvgPicture.asset(iconPath),
    );
  }
}
