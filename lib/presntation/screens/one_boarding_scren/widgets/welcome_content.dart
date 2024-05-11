import 'package:cleanning_app/core/utilites/appassets.dart';
import 'package:cleanning_app/presntation/screens/one_boarding_scren/widgets/onboarding_text.dart';

import 'package:flutter/material.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    super.key,
    required this.imagestringl,
    required this.onBoardingtext,
  });
  final String imagestringl;
  final String onBoardingtext;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset(imagestringl),
        SizedBox(
          height: 10,
        ),
        OnBoardingText(
          onboardingtitletext: onBoardingtext,
        ),
      ],
    );
  }
}
