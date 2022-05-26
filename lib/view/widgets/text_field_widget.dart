import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  String text;

   TextFieldWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    SizedBox(
      height: 40.sp,
      width: 300.sp,
      child: TextField(

        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 15.sp,top: 10.sp,bottom: 10.sp),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: text,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(
                color: Colors.transparent
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(
                color: Colors.transparent
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(
                color: Colors.transparent
            ),
          ),
        ),
      ),
    );
  }
}
