import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_team_practice/view/screens/sign_up_screen.dart';
import 'package:github_team_practice/view/widgets/button_widget.dart';
import 'package:github_team_practice/view/widgets/text_button_widget.dart';
import 'package:github_team_practice/view/widgets/text_field_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(

          padding: EdgeInsets.only(left: 57.sp, right: 57.sp),
          children: [
            // Padding(
            //   padding: EdgeInsets.only(
            //     top: 100.sp, left: 43.sp, right: 43.sp,),
            //   child: ,
            // ),

            SizedBox(
              height: 70.sp,
            ),
            Container(
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
            TextButtonWidget(text: 'Forgot Password ?', onTap: (){},),
            ButtonWidget(text: 'Sign In', onTap: (){}, color: const Color(0xff0D638A), textColor: Colors.white),
            SizedBox(
              height: 32.sp,
            ),
            ButtonWidget(text: 'Continue with google', onTap: (){}, color: Colors.transparent, textColor: const Color(
                0xff0D638A)),
            SizedBox(height: 16.sp,),
            ButtonWidget(text: 'Continue with Facebook', onTap: (){}, color: Colors.transparent, textColor: const Color(
                0xff0D638A)),

            SizedBox(
              height: 53.sp,
            ),
            Row(

              children: [
                const Expanded(

                    child:Text('Dont have an account ?',style: TextStyle(
                       letterSpacing: 0.18
           ),) ),
                Expanded(

                    child: TextButtonWidget(text: 'Create an Account', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      {

                        return  SignUpScreen();
                      }
                      ));
                    },))
              ],
            )


          ]),
    ));
  }
}
