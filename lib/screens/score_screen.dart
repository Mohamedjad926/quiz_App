import 'package:flutter/material.dart';
import 'package:quizapp/screens/home_screen.dart';
import 'package:quizapp/utils/colors.dart';
import 'package:quizapp/widget/home_sumit_screen.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int total;
  final String name; // New parameter

  ScoreScreen({required this.score, required this.total, required this.name}); // Update constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TakeName(
                controller: TextEditingController(text: name),
                headerText: 'Congratulations!!!!!',
                text:'Finish',
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false,);
                },
                name:  '''hello $name YOUR SCORE IS
                 $score / $total''',
                showTextField: false,
                
                
              )
            
            ],
          ),
        ),
      ),
    );
  }
}
