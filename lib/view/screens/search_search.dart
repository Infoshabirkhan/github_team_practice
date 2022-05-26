import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_team_practice/view/widgets/search_card.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:     SafeArea(
        child: ListView(

          padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
          children: [
            SizedBox(height: 20.sp,),

            const TextField(

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),

                filled: true,
                fillColor: Color(0xffFCFBFB),
                hintText: 'Search',

                border: OutlineInputBorder(

                )
              ),
            ),

          const SearchCards(image: 'programer.jpg'),
          const SearchCards(image: 'photograher.jpeg'),
          const SearchCards(image: 'self_learnng.png'),
          const SearchCards(image: 'peoples.jpg'),
          const SearchCards(image: 'technologies.jpg'),
          const SearchCards(image: 'historical.jpg'),




          ],
        ),
      ) );

  }
}
