import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen() {
    Get.reset();
  }

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.off(WelcomeScreen());
          },
        ),
        actions: [
          FlatButton(
              onPressed: _controller.nextQuestion, child: Text("Saltar")),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/bag.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Body(),
          );
        },
      ),
    );
  }
}
