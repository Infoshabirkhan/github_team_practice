import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatefulWidget {
  final Color  color;
  final VoidCallback onTap;
  final String text;
  final Color textColor;
  const ButtonWidget({Key? key,required this.text, required this.onTap,required this.color,required this.textColor}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 300.sp,
        height: 50.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(
            color: const Color(0xff0D638A)
          ),
          color:widget.color,
        ),
        child:Center(
          child: Text(widget.text,style: TextStyle(
            color: widget.textColor
          ),),
        ),

      ),
    );
  }
}
