import 'package:cleanning_app/core/utilites/appassets.dart';
import 'package:cleanning_app/core/utilites/appcolors.dart';
import 'package:cleanning_app/core/utilites/widgets/customtext.dart';
import 'package:cleanning_app/core/utilites/widgets/customtextformfield.dart';
import 'package:cleanning_app/presntation/screens/login_screen/widget/custom_container_text.dart';
import 'package:cleanning_app/presntation/screens/login_screen/widget/custom_login_column.dart';
import 'package:cleanning_app/presntation/screens/login_screen/widget/text_row_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
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
            width: 140,
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: ListView(
            children: [
              const SizedBox(
                height: 140,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: CustomText(
                    text: 'Log In',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const TextRowInfo(),
              CustomLoginColumn()
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            AssetsData.bottomright,
            width: 70,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
