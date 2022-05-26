import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_team_practice/constants/colors.dart';
import 'package:github_team_practice/view/screens/login_screen.dart';
import 'package:github_team_practice/view/widgets/button_widget.dart';
import 'package:github_team_practice/view/widgets/check_box.dart';

import '../widgets/text_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 57.sp, right: 40.sp),
          children: [
            Image.asset(
              "assets/images/blog.png",
            ),
            SizedBox(
              height: 25.sp,
            ),
            Text(
              "Create Account",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4.sp,
            ),
            Text(
              "Enter your credentials here",
              style: TextStyle(color: AppColors.primaryColor, fontSize: 16.sp),
            ),
            SizedBox(
              height: 42.sp,
            ),
            Text(
              "Full Name",
              style: TextStyle(color: AppColors.primaryColor),
            ),
            SizedBox(
              height: 6.sp,
            ),
            TextFieldWidget(
              text: "Jhon doe",
            ),
            SizedBox(
              height: 18.sp,
            ),
            Text(
              "Email",
              style: TextStyle(color: AppColors.primaryColor),
            ),
            SizedBox(
              height: 6.sp,
            ),
            TextFieldWidget(
              text: "xyz@gmail.com",
            ),
            SizedBox(
              height: 18.sp,
            ),
            Text(
              "Password",
              style: TextStyle(color: AppColors.primaryColor),
            ),
            SizedBox(
              height: 6.sp,
            ),
            TextFieldWidget(
              text: '********',
            ),
            SizedBox(
              height: 34.sp,
            ),
            MyCheckBox(),
            SizedBox(
              height: 30.sp,
            ),
            ButtonWidget(
                text: "Create Account",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return LoginScreen();
                  }));
                },
                color: AppColors.buttonColor,
                textColor: Colors.white),
            SizedBox(
              height: 42.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return LoginScreen();
                            })),
                          },
                    text: 'Login',
                    style: TextStyle(
                      color: AppColors.buttonColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
