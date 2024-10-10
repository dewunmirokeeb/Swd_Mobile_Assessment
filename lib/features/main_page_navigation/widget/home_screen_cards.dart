import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swd_mobile_assessment/features/components/custom_text_button.dart';
import 'package:swd_mobile_assessment/features/main_page_navigation/widget/account_balance_card.dart';
import 'package:swd_mobile_assessment/features/main_page_navigation/widget/balance_card.dart';
import 'package:swd_mobile_assessment/features/main_page_navigation/widget/home_page_card.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';
import 'package:swd_mobile_assessment/features/utils/app_string.dart';
import 'package:swd_mobile_assessment/features/utils/svg_icon.dart';

// Update Card Widget
class UpdateCard extends StatelessWidget {
  const UpdateCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "News & Update",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              CustomTextButton(
                onPressed: () {},
                buttonText: "View All",
                horizontalPadding: 0,
                color: AppColors.orangeColor,
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    10,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 250,
                      height: 120,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Action Card Widget

class ActionCard extends StatelessWidget {
  const ActionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Quick Actions",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 180,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: SvgIcon.quickActionData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: .85,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.black4Color,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        SvgIcon.quickActionData[index]["iconPath"],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        SvgIcon.quickActionData[index]["title"],
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// HomePage Header Widget

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 368,
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: const Column(
        children: [
          Row(
            children: [
              HomePageIconButton(
                iconPath: SvgIcon.user,
              ),
              Spacer(),
              Text(
                AppString.welcomeBackText,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.black2Color,
                ),
              ),
              Spacer(),
              HomePageIconButton(
                iconPath: SvgIcon.notification,
              ),
            ],
          ),
          SizedBox(height: 40),
          WalletBalanceCard(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconTile(
                iconTitle: "Top up",
                iconPath: SvgIcon.topUp,
              ),
              SizedBox(
                height: 20,
                width: 50,
                child: VerticalDivider(),
              ),
              IconTile(
                iconTitle: "Transfer",
                iconPath: SvgIcon.transfer,
              ),
              SizedBox(
                height: 20,
                width: 50,
                child: VerticalDivider(),
              ),
              IconTile(
                iconTitle: "History",
                iconPath: SvgIcon.history,
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 50,
            child: Divider(
              thickness: 5,
              color: AppColors.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}

//HomePage Icon tile widget
class IconTile extends StatelessWidget {
  const IconTile({
    required this.iconPath,
    required this.iconTitle,
    super.key,
  });
  final String iconPath;
  final String iconTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          iconPath,
        ),
        const SizedBox(height: 5),
        Text(
          iconTitle,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}

// Wallet Balance Card Widget

class WalletBalanceCard extends StatelessWidget {
  const WalletBalanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.orangeColor,
            AppColors.lightOrangeColor,
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: BalanceCard(),
          ),
          SizedBox(
            height: 150,
            width: 10,
            child: VerticalDivider(
              thickness: 3,
              color: AppColors.deepRed,
            ),
          ),
          Expanded(
            child: AccountCard(),
          ),
        ],
      ),
    );
  }
}
