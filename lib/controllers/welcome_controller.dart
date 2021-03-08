import 'dart:async';
import 'dart:math';

import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class WelcomeController extends GetxController {
  var _aligX = 0.0.obs;

  double get aligX => _aligX.value;

  set aligX(aligX) {
    _aligX.value = aligX;
  }

  var _aligY = 0.0.obs;

  double get aligY => _aligY.value;

  set aligY(aligY) {
    _aligY.value = aligY;
  }

  Timer t;

  var curve = Curves.easeInOut;

  List get gValues {
    var v = List.generate(90, (index) => index * 100 / 10000);
    return v;
  }

  var indexColor = 0;

  var listColorsOfGradient = [
    [
      Color(0xFFB0B9D4),
      Color(0xFF68696C),
      Color(0xFF737784),
      Color(0xFF52545B),
      Color(0xFF525767),
      Color(0xFF2D303C),
      Color(0xFF373C4A),
      Color(0xFF1D2230),
      Color(0xFF161C24),
    ],
    [
      Color(0xFFCAB9B9),
      Color(0xFF6C6868),
      Color(0xFF847373),
      Color(0xFF545050),
      Color(0xFF625555),
      Color(0xFF392F2F),
      Color(0xFF4A3C3C),
      Color(0xFF261919),
      Color(0xFF181010),
    ],
    [
      Color(0xFFBCCCBE),
      Color(0xFF686C68),
      Color(0xFF738473),
      Color(0xFF505450),
      Color(0xFF556256),
      Color(0xFF2F3930),
      Color(0xFF3C4A3E),
      Color(0xFF19261A),
      Color(0xFF0F1610),
    ],
    [
      Color(0xFFC7C7B2),
      Color(0xFF6C6C68),
      Color(0xFF848473),
      Color(0xFF545450),
      Color(0xFF626255),
      Color(0xFF39382F),
      Color(0xFF4A493C),
      Color(0xFF323022),
      Color(0xFF2D2D1E),
    ],
    [
      Color(0xFFC3B2C1),
      Color(0xFF6C686C),
      Color(0xFF937A8F),
      Color(0xFF545053),
      Color(0xFF625560),
      Color(0xFF392F38),
      Color(0xFF4A3C49),
      Color(0xFF322231),
      Color(0xFF2C1E2D),
    ],
  ];

  @override
  void onInit() {
    t = Timer.periodic(Duration(milliseconds: tempoDeTroca), (timer) {
      var values = gValues;
      var newAligX = Random.secure().nextBool()
          ? -(values[Random.secure().nextInt(values.length)])
          : values[Random.secure().nextInt(values.length)];
      var newAligY = Random.secure().nextBool()
          ? -(values[Random.secure().nextInt(values.length)])
          : values[Random.secure().nextInt(values.length)];
      indexColor = Random.secure().nextInt(listColorsOfGradient.length);
      aligX = newAligX;
      aligY = newAligY;
      update();
    });
    super.onInit();
  }

  @override
  void onClose() {
    t.cancel();
    super.onClose();
  }
}
