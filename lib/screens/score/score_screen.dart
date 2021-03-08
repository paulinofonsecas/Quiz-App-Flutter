import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/components/primary_button.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.find();
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/bag.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Spacer(flex: 3),
                Text(
                  "Score",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: kSecondaryColor),
                ),
                Spacer(),
                Text(
                  "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kSecondaryColor),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: PrimaryButton(
                    title: 'Menu principal',
                    onTap: () => Get.off(WelcomeScreen()),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: PrimaryButton(
                    title: 'Voltar a jogar',
                    onTap: () => Get.off(QuizScreen()),
                  ),
                ),
                Spacer(flex: 3),
              ],
            )
          ],
        ),
      ),
    );
  }
}
