import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Question {
  int id, answer;
  String question;
  List<String> options;

  Question({this.id, this.question, this.answer, this.options});

  List<String> shuffle() {
    var list = List<String>.from(options);
    var map = {answer: list[answer]};
    list.shuffle();
    answer = list.indexOf(map[answer]);
    return list;
  }
}

List data = [
  {
    "id": 1,
    "question": "Quem é o atual governador da provincia?",
    "options": [
      "João Manuel gonsalves lourenço",
      "Pereira Alfredo",
      "Americo cachipaco",
      "Boa vida Neto"
    ],
    "answer_index": 1
  },
  {
    "id": 2,
    "question": "Quantos anos tem a província do Bié?",
    "options": ["143", "172", "190", "200"],
    "answer_index": 1
  },
  {
    "id": 3,
    "question": "Como se chama o criador do jogo?",
    "options": [
      "Antonio Lopes",
      "Salvador Fonseca",
      "Paulino Fonseca",
      "Vencislau Moreira"
    ],
    "answer_index": 2
  },
  {
    "id": 4,
    "question": "Em qual municipio nasceu o maior rio de angola?",
    "options": ["Cuito", "Andulo", "Cuemba", "Chitembo"],
    "answer_index": 3
  }
];
