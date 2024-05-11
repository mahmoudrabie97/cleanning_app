import 'package:cleanning_app/core/utilites/appassets.dart';
import 'package:cleanning_app/presntation/screens/one_boarding_scren/widgets/welcome_content.dart';
import 'package:flutter/material.dart';

class WelcomeContentPageone extends StatelessWidget {
  const WelcomeContentPageone({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: WelcomeContent(
        imagestringl: AssetsData.oneboardingone,
        onBoardingtext: 'Cleaning Service',
      ),
    );
  }
}
