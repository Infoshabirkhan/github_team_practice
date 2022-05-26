import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_team_practice/constants/colors.dart';
import 'package:github_team_practice/controller/cubit/bottom_navigation_cubit.dart';
import 'package:github_team_practice/view/screens/home_screen.dart';
import 'package:github_team_practice/view/screens/person_screen.dart';
import 'package:github_team_practice/view/screens/search_search.dart';

class BottomNavigaionScreen extends StatefulWidget {
  const BottomNavigaionScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigaionScreen> createState() => _BottomNavigaionScreenState();
}

class _BottomNavigaionScreenState extends State<BottomNavigaionScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationCubit(0),
      child: Scaffold(
        bottomNavigationBar: Container(

          height: 90.sp,
          color: AppColors.darkBlueColor,

          child: BlocBuilder<BottomNavigationCubit, int>(

            builder: (context, state) {
              return Row(
                children: [
                  Expanded(child: InkWell(
                      onTap: () {
                        pageController.jumpToPage(0);
                        context.read<BottomNavigationCubit>().getNextScreen(index: 0);
                      },
                      child: Column(
                        children: [
                          Expanded(
                              flex: 6,
                              child: Icon(Icons.home, color: state == 0 ? Colors.white : Colors.white.withOpacity(0.6),)),


                          Expanded(child: Container(
                            width: 60.sp,

                            decoration: BoxDecoration(
                              color: state == 0 ? Colors.white : Colors.transparent,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10.sp,), topLeft: Radius.circular(10.sp))
                            ),
                            ))

                        ],
                      ))),
                  Expanded(child: InkWell(

                      onTap: () {
                        pageController.jumpToPage(1);
                        context.read<BottomNavigationCubit>().getNextScreen(index: 1);
                      },
                      child: Column(
                        children: [
                          Expanded(
                              flex: 6,
                              child: Icon(Icons.search, color: state == 1 ? Colors.white : Colors.white.withOpacity(0.6),)),

                          Expanded(child: Container(
                            width: 60.sp,

                            decoration: BoxDecoration(
                                color: state == 1 ? Colors.white : Colors.transparent,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10.sp,), topLeft: Radius.circular(10.sp))
                            ),
                          ))

                        ],
                      ))),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                          pageController.jumpToPage(2);
                          context.read<BottomNavigationCubit>().getNextScreen(index: 2);
                        },
                      child: Column(
                        children: [
                          Expanded(
                              flex: 6,
                              child: Icon(Icons.person, color: state == 2 ? Colors.white : Colors.white.withOpacity(0.6),)),
                          Expanded(child: Container(
                            width: 60.sp,

                            decoration: BoxDecoration(
                                color: state == 2 ? Colors.white : Colors.transparent,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10.sp,), topLeft: Radius.circular(10.sp))
                            ),
                          ))


                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
        body: PageView(
          physics: const  NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            HomeScreen(),
            SearchScreen(),
            PersonScreen(),
          ],
        ),
      ),
    );
  }
}
