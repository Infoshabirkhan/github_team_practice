import 'package:flutter/material.dart';

class TextButtonWidget extends StatefulWidget {
  String text;
  final VoidCallback onTap;


   TextButtonWidget({Key? key,required this.text,required this.onTap }) : super(key: key);

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        child: TextButton(onPressed:widget.onTap, child: Text(widget.text)));
  }
}
