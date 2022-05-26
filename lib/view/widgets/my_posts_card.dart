import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyPostCards extends StatefulWidget {
  final String image;

  const MyPostCards({Key? key,required this.image}) : super(key: key);

  @override
  State<MyPostCards> createState() => _MyPostCardsState();
}

class _MyPostCardsState extends State<MyPostCards> {
  @override
  Widget build(BuildContext context) {
    return  Container(

      margin: EdgeInsets.only(top: 20.sp),
      height: 200.sp,
      child: Column(
        children: [
          const Expanded(child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Post date 12/05/2022'))),
          Expanded(
              flex: 5,
              child: Container(
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


                                child: Image.asset('assets/images/${widget.image}', fit: BoxFit.cover,)))),

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10.sp, right: 10.sp),
                        child: Row(
                          children: [
                            const Expanded(
                                flex: 2,
                                child: Text('Photography Tips')),
                            Expanded(child: Row(
                              children: const [
                                Expanded(child: Icon(Icons.delete)),
                                Expanded(child: Icon(Icons.edit)),
                                Expanded(child: Icon(Icons.share)),
                              ],
                            ))
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              )),
        ],
      ),
    );
  }
}
