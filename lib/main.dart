import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_team_practice/controller/cubit/first_check_box_cubit.dart';
import 'package:github_team_practice/view/screens/bottom_navigation_screen.dart';
import 'package:github_team_practice/view/screens/home_screen.dart';
import 'package:github_team_practice/view/screens/login_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark));
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
         BlocProvider(create: (_) => FirstCheckBoxCubit(false)),
       ],
       child: MaterialApp(
         debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home: const LoginScreen(),

        ),
     ),

      designSize: Size(414, 896),
    );
  }
}
