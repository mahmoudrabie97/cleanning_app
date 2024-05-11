import 'package:cleanning_app/core/utilites/appassets.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 2,
          right: 0,
          child: Image.asset(
            AssetsData.topright,
            fit: BoxFit.cover,
            width: 140,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            AssetsData.topleft,
            fit: BoxFit.cover,
            width: 140,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AssetsData.spalsh),
              const SizedBox(
                height: 5,
              ),
              Image.asset(AssetsData.mainheadline),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            AssetsData.bottomright,
            fit: BoxFit.cover,
            width: 140,
          ),
        )
      ],
    );
  }
}
