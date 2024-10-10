import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.pageIndex,
    super.key,
  });
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          ...List.generate(
            2,
            (index) => Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: pageIndex == index
                      ? AppColors.whiteColor
                      : AppColors.black3Color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
