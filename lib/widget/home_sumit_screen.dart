import 'package:flutter/material.dart';
import 'package:quizapp/models/quiz_model.dart';
import 'package:quizapp/screens/home_screen.dart';
import 'package:quizapp/screens/quiz_screen.dart';
import 'package:quizapp/utils/colors.dart';
import 'package:quizapp/widget/custom_button.dart';

import 'package:quizapp/widget/text_fieled.dart'; // Ensure this matches your custom text field file

class TakeName extends StatelessWidget {
  const TakeName({
    required this.name,
    required this.headerText,
    required this.text,
    required this.controller,
    required this.onTap,
    this.showTextField = true, // Default to true
    Key? key,
  }) : super(key: key);

  final String name;
  final String headerText;
  final String text;
  final TextEditingController controller;
  final VoidCallback onTap;
  final bool showTextField; // New parameter

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.only(right: 45, left: 45, top: 20, bottom: 20),
          decoration: BoxDecoration(
            color: AppColor.gray,
            borderRadius: BorderRadius.circular(20),
          ),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                name,
                style: const TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 10),
              if (showTextField) // Show the text field based on the flag
                CustomTextField(
                  controller: controller,
                ),
              const SizedBox(height: 20),
              CustomButttom(
                onTap: onTap,
                text: text,
                color: AppColor.primaryColor,
              ),
            ],
          ),
        ),
        Positioned(
          top: -15,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.primaryColor,
            ),
            child: Text(
              headerText,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
