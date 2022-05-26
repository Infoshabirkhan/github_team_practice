import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SearchCards extends StatelessWidget {
  final String image;
  const SearchCards({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(top: 20.sp),
      height: 180.sp,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.sp),
          boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(100,),blurRadius: 10),
          ]

      ),
      child: Column(
        children: [

          Expanded(
              flex: 2,
              child: SizedBox(

                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12.sp), topRight: Radius.circular(12.sp)),


                      child: Image.asset('assets/images/$image', fit: BoxFit.cover,)))),

          Expanded(
            child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10.sp, right: 10.sp),
                child: Text('Photography Tips')


            ),
          )

        ],
      ),
    );
  }
}
