import 'package:srp/GetInput.dart';
import 'package:srp/Game.dart';
import 'dart:io';

// Start message
void hello() {
  print('Hello! it\'s primitive game Rock-Papper-Scissor.');
  print('Ai in this game just Random function from 0 to 2');
  print('Where: \n0 is Scissor\n1 is Papper\n2 is Rock');
}

startGame() {
  print('\nMake your choice');
  print(Game());
  repeatGame();
}

repeatGame() {
  print('Do you want play again?');
  GetInput().answer() ? startGame() : exit(0);
}

void main() {
  hello();
  startGame();
}