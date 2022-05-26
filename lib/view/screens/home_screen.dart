import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_team_practice/view/widgets/my_posts_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
          children: [

            SizedBox(height: 20.sp,),

            Row(
              children: [
                Expanded(child: Text('My Blogs', style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold ),)),
                Expanded(child: Align(

                    alignment: Alignment.centerRight,
                    child: SizedBox(
                        height: 35.sp,
                        child: Image.asset('assets/images/signupLogo.png',))))
              ],
            ),
            Text('Create and post blogs',style: TextStyle(fontSize: 16.sp),),

            const MyPostCards(image: 'photograher.jpeg'),
            const MyPostCards(image: 'programer.jpg'),
            const MyPostCards(image: 'self_learnng.png'),
            const MyPostCards(image: 'technologies.jpg'),
            const MyPostCards(image: 'programer.jpg'),
            const MyPostCards(image: 'peoples.jpg'),
            const MyPostCards(image: 'historical.jpg'),

          ],
        ),
      ),
    );
  }
}
