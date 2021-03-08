import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/components/primary_button.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/welcome_controller.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<WelcomeController>(
        init: WelcomeController(),
        builder: (controller) => Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/icons/bag.png'),
            fit: BoxFit.fill,
          )),
          child: Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(flex: 2), //2/6
                      Text(
                        "Vamos começar,",
                        style: Theme.of(context).textTheme.headline3.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text("Aperte o botão abaixo para começar"),
                      Spacer(), // 1/6
                      PrimaryButton(
                        title: "Começar o jogo",
                        onTap: () => Get.off(QuizScreen()),
                      ),
                      Spacer(flex: 2), // it will take 2/6 spaces
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
