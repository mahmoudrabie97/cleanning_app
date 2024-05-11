import 'package:flutter/material.dart';

class CustomContainerText extends StatelessWidget {
  const CustomContainerText({super.key, required this.containerInfoText});
  final String containerInfoText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF5F6FA),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              textAlign: TextAlign.center,
              containerInfoText,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
