import 'package:cleanning_app/core/utilites/appassets.dart';
import 'package:cleanning_app/presntation/screens/one_boarding_scren/widgets/welcome_content.dart';
import 'package:flutter/material.dart';

class WelcomeContentPageThree extends StatelessWidget {
  const WelcomeContentPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: WelcomeContent(
        imagestringl: AssetsData.oneboardingthree,
        onBoardingtext: 'Work Quality',
      ),
    );
  }
}
