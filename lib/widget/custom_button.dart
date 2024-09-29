import 'package:flutter/material.dart';
import 'package:quizapp/utils/colors.dart';

class CustomButttom extends StatelessWidget {
  CustomButttom({required this.onTap,this.textStyle, this .color,required this.text, super.key});
Color? color;
String text;
TextStyle? textStyle ;
VoidCallback  onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
       
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 30
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          border: Border.all(color: AppColor.primaryColor
          )
          
          
        ),
        child: Text(
          text,
          style: textStyle,
          textAlign: TextAlign.center,),
      ),
    );
  }
}