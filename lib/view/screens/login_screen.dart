import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_team_practice/view/screens/sign_up_screen.dart';
import 'package:github_team_practice/view/widgets/button_widget.dart';
import 'package:github_team_practice/view/widgets/text_button_widget.dart';
import 'package:github_team_practice/view/widgets/text_field_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_navigation_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: ListView(
            padding: EdgeInsets.only(left: 57.sp, right: 57.sp),
            children: [
              SizedBox(
                height: 50.sp,
              ),
              SizedBox(
                //   color: Colors.blue,
                width: 193.sp,
                height: 100.sp,
                child: Image.asset('assets/images/blogimg.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48.sp),
                child: Text(
                  'Login',
                  style: GoogleFonts.akayaTelivigala(
                      color: Colors.black,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 4.sp,
              ),
              Text(
                'Enter your credentials to login',
                style: GoogleFonts.akayaTelivigala(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                'Email',
                style: GoogleFonts.akayaTelivigala(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 6.sp,
              ),

              TextFieldWidget(text: 'xyz@gmail.com'),

              SizedBox(
                height: 18.sp,
              ),
              Text(
                'Password',
                style: GoogleFonts.akayaTelivigala(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 6.sp,
              ),
              TextFieldWidget(
                text: '*********',
              ),
              TextButtonWidget(
                text: 'Forgot Password ?',
                onTap: () {},
              ),
              ButtonWidget(
                  text: 'Sign In',
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const BottomNavigaionScreen();
                    }));
                  },
                  color: const Color(0xff0D638A),
                  textColor: Colors.white),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Expanded(
                      child: Center(
                          child: Text(
                    ' OR',
                    style: TextStyle(color: Colors.grey[300]),
                  ))),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: 12.sp,
              ),
              ButtonWidget(
                  text: 'Continue with google',
                  onTap: () {},
                  color: Colors.transparent,
                  textColor: const Color(0xff0D638A)),
              SizedBox(
                height: 16.sp,
              ),
              ButtonWidget(
                  text: 'Continue with Facebook',
                  onTap: () {},
                  color: Colors.transparent,
                  textColor: const Color(0xff0D638A)),

              SizedBox(
                height: 53.sp,
              ),
              RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Login',
                          style: TextStyle(
                              color: Colors.blueAccent, fontSize: 18.sp),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignUpScreen();
                              }));
                            })
                    ]),
              ),
              //  Row(
              //
              //    children: [
              //      const Expanded(
              //
              //          child:Text('Dont have an account ?',style: TextStyle(
              //             letterSpacing: 0.18
              // ),) ),
              //      Expanded(
              //
              //          child: TextButtonWidget(text: 'Create an Account', onTap: (){
              //            Navigator.push(context, MaterialPageRoute(builder: (context)
              //            {
              //
              //              return  SignUpScreen();
              //            }
              //            ));
              //          },))
              //    ],
              //  )
            ]),
      ),
    ));
  }
}
