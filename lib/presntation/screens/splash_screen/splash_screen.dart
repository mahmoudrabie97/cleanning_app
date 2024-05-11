import 'package:cleanning_app/core/utilites/appassets.dart';
import 'package:cleanning_app/core/utilites/extentionhelper.dart';
import 'package:cleanning_app/presntation/screens/splash_screen/widegets/splash_body.dart';
import 'package:cleanning_app/presntation/screens/one_boarding_scren/welcome_page.dart';
import 'package:flutter/material.dart';

class SplashScreenn extends StatefulWidget {
  const SplashScreenn({super.key});

  @override
  State<SplashScreenn> createState() => _SplashScreennState();
}

class _SplashScreennState extends State<SplashScreenn> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.push(const Welcomepage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffE4EEF7),
        body: SplashBody(),
      ),
    );
  }
}
