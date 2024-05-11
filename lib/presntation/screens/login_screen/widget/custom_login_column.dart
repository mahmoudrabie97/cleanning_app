import 'package:cleanning_app/core/utilites/appcolors.dart';
import 'package:cleanning_app/core/utilites/widgets/custombutton.dart';
import 'package:cleanning_app/core/utilites/widgets/customtext.dart';
import 'package:cleanning_app/core/utilites/widgets/customtextformfield.dart';
import 'package:cleanning_app/presntation/cubit/logincubit/logincubit.dart';
import 'package:cleanning_app/presntation/cubit/logincubit/loginstates.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomLoginColumn extends StatelessWidget {
  CustomLoginColumn({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: CustomTextFormField(
                onsubmitted: (value) {
                  FocusScope.of(context).requestFocus(field2);
                },
                hintText: 'Please enter your phone number',
                focusnode: field1,
                perfixicon: Icons.phone_android,
                prefixColor: Colors.red,
                fillColor: Color(0xffF5F6FA),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: CustomTextFormField(
                focusnode: field2,
                hintText: 'Password',
                controller: _passwordController,
                obscureText: LoginCubit.get(context).isSecurep,
                fillColor: Color(0xffF5F6FA),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your Password';
                  }
                  return null;
                },
                suffixicon: LoginCubit.get(context).sufficxicp,
                suffixpressed: () {
                  LoginCubit.get(context).changeSecurePassword();
                },
              ),
            ),
            Row(
              children: [
                Spacer(),
                CustomText(
                  text: 'Forget Password?',
                  color: AppColor.blueColor,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                buttonText: 'Login',
                onPressed: () {},
                borderRadius: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: 'Dont have an account?'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CustomText(
                    text: 'Register ',
                    color: AppColor.blueColor,
                    fontWeight: FontWeight.bold,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: AppColor.blueColor,
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
