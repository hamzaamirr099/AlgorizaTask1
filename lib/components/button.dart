import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {

  Function func;
  final String text;
  Color fontColor;
  Color backColor;
  double width;
  double radius;
  double fontSize;
  double height;

  MyButton({Key? key,
    required this.func(),
    required this.text,
    this.fontColor = Colors.white,
    this.backColor = Colors.teal,
    this.width = double.infinity,
    this.radius = 8.0,
    this.fontSize = 16.0,
    this.height = 50.0,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backColor,
      ),
      width: width,
      height: height,
      child: TextButton(
        onPressed: (){func();},
        child: Text(
          text,
          style: TextStyle(
            color: fontColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
