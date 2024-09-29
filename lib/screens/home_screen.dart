import 'package:flutter/material.dart';
import 'package:quizapp/models/question_model.dart';
import 'package:quizapp/models/quiz_model.dart';
import 'package:quizapp/screens/quiz_screen.dart';
import 'package:quizapp/widget/create_quiz.dart';
import 'package:quizapp/widget/home_sumit_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';
  HomeScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff86948F),
      body: Padding(
        padding: const EdgeInsets.only(top: 65, left: 27),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Quiz',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            Image.asset('assets/images/Ellipse 1.png'),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.only(right: 27),
                child: TakeName(
                  name: 'Please Enter Your Name',
                  headerText: 'Welcome',
                  controller: nameController,
                  text: 'Submit',
                  showTextField: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizScreen(
                                quiz: createQuiz(),
                                name: nameController.text, 
                              )),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
