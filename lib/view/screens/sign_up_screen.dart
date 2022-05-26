import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_team_practice/constants/colors.dart';


class SignUpScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final signUpButton = ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(327.sp, 44.sp),
          primary: AppColors.buttonColor,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
        ),
        onPressed: () {},

        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Text(
              "Create Account",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
              ),
            ),
          ),
        ]));



    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.only(left: 57.sp,right: 40.sp),

            children: [
              Image.asset("assets/images/blog.png",),
              SizedBox(height: 25.sp,),
              Text("Create Account",style: TextStyle(color: AppColors.primaryColor,fontSize: 28.sp),),
              SizedBox(height: 4.sp,),
              Text("Enter your credentials here",style: TextStyle(color: AppColors.primaryColor,fontSize: 16.sp),),
              SizedBox(height: 42.sp,),
              Text("Full Name",style: TextStyle(color: AppColors.primaryColor),),
              SizedBox(height: 6.sp,),
              SizedBox(
                height: 40.sp,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Jhon Doe",
                    contentPadding: EdgeInsets.only(left: 15.sp, top:10.sp, bottom: 9.sp ),
                    filled: true,
                    fillColor: AppColors.fieldbackroundfieldColor,
                    focusedBorder:OutlineInputBorder(
                      borderSide:  BorderSide(color: AppColors.fieldborderfieldColor, width: 1),
                      borderRadius: BorderRadius. circular(6.r),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        color: AppColors.fieldborderfieldColor, width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18.sp,),
              Text("Email",style: TextStyle(color: AppColors.primaryColor),),
              SizedBox(height: 6.sp,),
              SizedBox(
                height: 40.sp,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "xyz@gmail.com",
                    contentPadding: EdgeInsets.only(left: 15.sp, top:10.sp, bottom: 9.sp ),
                    filled: true,
                    fillColor: AppColors.fieldbackroundfieldColor,
                    focusedBorder:OutlineInputBorder(
                      borderSide:  BorderSide(color: AppColors.fieldborderfieldColor, width: 1),
                      borderRadius: BorderRadius. circular(6.r),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        color: AppColors.fieldborderfieldColor, width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18.sp,),
              Text("Password",style: TextStyle(color: AppColors.primaryColor),),
              SizedBox(height: 6.sp,),
              SizedBox(
                height: 40.sp,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "**********",
                    contentPadding: EdgeInsets.only(left: 15.sp, top:10.sp, bottom: 9.sp ),
                    filled: true,
                    fillColor: AppColors.fieldbackroundfieldColor,
                    focusedBorder:OutlineInputBorder(
                      borderSide:  BorderSide(color: AppColors.fieldborderfieldColor, width: 1),
                      borderRadius: BorderRadius. circular(6.r),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        color: AppColors.fieldborderfieldColor, width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40.sp,),
              signUpButton,
              SizedBox(height: 40.sp,),
              Padding(
                padding:  EdgeInsets.only(left: 20.sp),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(fontSize: 16.sp,),
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(color: AppColors.buttonColor,fontSize: 16.sp,),
                      ),
                    ]
                  ),
                ),
              )

            ],
          ),
        ),
    );
  }
}
