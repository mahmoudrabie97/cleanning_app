import 'package:cleanning_app/core/utilites/appcolors.dart';
import 'package:flutter/material.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
      width: isActive ? 20 : 6,
      height: isActive ? 5 : 4,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: isActive ? AppColor.blueColor : Colors.black,
      ),
    );
  }
}
