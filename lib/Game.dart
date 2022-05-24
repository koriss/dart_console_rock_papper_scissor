import 'dart:math';
import 'package:srp/GetInput.dart';

class Game {
  int? choicePlayer;
  int? choiceAi;
  bool result = false;
  Map<int, String> v = {
    0 : 'Scissor',
    1 : 'Papper',
    2 : 'Rock',
  };

  Mechanic() {
    choicePlayer = getPlayerChoice();
    choiceAi = getAiChoice();
    result = getResult();
  }

  getAiChoice() => Random().nextInt(3);

  getPlayerChoice() {
    int choice = GetInput().integer();
    if (choice < 3 && choice > -1) return choice;

    print('Type an integer from 0 to 2');
    return getPlayerChoice();
  }

  getResult() {
    /*
    0 is Scissor
    1 is Papper
    2 is Rock
     */
    Map result = {
      0 : {
        0 : false,
        1 : true,
        2 : false,
      },
      1 : {
        0 : false,
        1 : false,
        2 : true,
      },
      2 : {
        0 : true,
        1 : false,
        2 : false,
      },
    };

    return result[choicePlayer][choiceAi];
  }

  @override
  String toString() {

    print('Player: ${v[choicePlayer]}');
    print('Player: ${v[choiceAi]}');

    String data = result ? '>>>>>> You win <<<<<<<\n' : '>>> Try again! :)\n';

    return data;
  }
}