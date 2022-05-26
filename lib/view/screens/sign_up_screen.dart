import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_team_practice/constants/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 57.sp,right: 40.sp),
          child: ListView(
            children: [
              Image.asset("assets/images/blog.png",),
              Text("Create Account",style: TextStyle(color: AppColors.primaryColor,fontSize: 28.sp),),
              Text("Enter your credentials here",style: TextStyle(color: AppColors.primaryColor,fontSize: 16.sp),),
              Text("Full Name",style: TextStyle(color: AppColors.primaryColor),),
              SizedBox(
                height: 40.sp,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Jhon Doe",
                    contentPadding: EdgeInsets.only(left: 15.sp, top:10.sp, bottom: 9.sp ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
