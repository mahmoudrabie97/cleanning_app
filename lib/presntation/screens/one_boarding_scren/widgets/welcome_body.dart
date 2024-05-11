import 'package:cleanning_app/core/utilites/extentionhelper.dart';
import 'package:cleanning_app/core/utilites/widgets/custombutton.dart';
import 'package:cleanning_app/core/utilites/widgets/customtext.dart';
import 'package:cleanning_app/presntation/screens/login_screen/login_screen.dart';
import 'package:cleanning_app/presntation/screens/one_boarding_scren/welcome_content_page1.dart';
import 'package:cleanning_app/presntation/screens/one_boarding_scren/welcome_content_page2.dart';
import 'package:cleanning_app/presntation/screens/one_boarding_scren/welcome_content_page3.dart';
import 'package:cleanning_app/presntation/screens/one_boarding_scren/widgets/custompageindicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeBody extends StatefulWidget {
  const WelcomeBody({super.key});
  @override
  WelcomeBodyState createState() => WelcomeBodyState();
}

class WelcomeBodyState extends State<WelcomeBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 150,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: const [
                WelcomeContentPageone(),
                WelcomeContentPageTwo(),
                WelcomeContentPageThree(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                CustomPageIndicator(isActive: i == _currentPage)
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                child: SizedBox(
                  height: 40,
                  child: CustomButton(
                      buttonText: 'Get Started',
                      borderRadius: 0,
                      onPressed: () {
                        if (_currentPage < 2) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        } else {
                          context.push(const LoginScreen());
                        }
                      }),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    context.push(const LoginScreen());
                  },
                  child: const CustomText(
                    text: 'Skip',
                    fontSize: 14,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
