import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(

          padding: EdgeInsets.symmetric(horizontal: 57.sp),
          child: ListView(children: [
            Padding(
              padding: EdgeInsets.only(
                top: 100.sp, left: 43.sp, right: 43.sp,),
              child: Image.asset('assets/images/blogimg.png',width: 193.sp,height: 101.sp,),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 68.sp),
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

           TextField(
             decoration: InputDecoration(
               fillColor: Colors.grey[200],
               filled: true,
               hintText: 'xyz@gmail.com',
               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(16.r),
                 borderSide: const BorderSide(
                   color: Colors.transparent
                 ),
               ),
               focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(16.r),
                 borderSide: const BorderSide(
                     color: Colors.transparent
                 ),
               ),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(16.r),
                 borderSide: const BorderSide(
                     color: Colors.transparent
                 ),
               ),
             ),
           ),



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

            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                hintText: '*************',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(
                      color: Colors.transparent
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(
                      color: Colors.transparent
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: const BorderSide(
                      color: Colors.transparent
                  ),
                ),
              ),
            )

          ]),
        ));
  }
}



