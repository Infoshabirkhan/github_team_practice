import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_team_practice/view/controller/cubit/first_check_box_cubit.dart';
import 'package:github_team_practice/view/screens/home_screen.dart';
import 'package:github_team_practice/view/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) =>
     MultiBlocProvider(
       providers: [
         BlocProvider(create: (_) => FirstCheckBoxCubit(true)),
       ],
       child: MaterialApp(
          title: 'Flutter Demo',
         theme:ThemeData(
           textTheme: GoogleFonts.montserratTextTheme(
             Theme.of(context).textTheme,
           ),

         ),
          home: const LoginScreen(),

        ),
     ),

      designSize: Size(414, 896),
    );
  }
}
