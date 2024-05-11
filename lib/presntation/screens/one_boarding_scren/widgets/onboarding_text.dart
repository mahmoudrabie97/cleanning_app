import 'package:cleanning_app/core/utilites/appcolors.dart';
import 'package:cleanning_app/core/utilites/widgets/customtext.dart';
import 'package:flutter/material.dart';

class OnBoardingText extends StatelessWidget {
  const OnBoardingText({super.key, required this.onboardingtitletext});
  final String onboardingtitletext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomText(
            text: onboardingtitletext,
            color: AppColor.blueColor,
            fontSize: 32,
          ),
          const CustomText(
            text: '  Room Cleaning  means the performance ',
            fontSize: 16,
          ),
          const CustomText(
            text: '    of services or that are cleanliness',
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
