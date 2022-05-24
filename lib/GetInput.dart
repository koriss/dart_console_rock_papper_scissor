import 'dart:io';

class GetInput {

  int integer() {
    String? s = stdin.readLineSync();
    if (s != null && int.tryParse(s) != null) return int.parse(s);

    print('Input an integer please :)');
    return integer();
  }

  bool answer() {
    print('Type "yes" or "no"');

    String? s = stdin.readLineSync();

    if (s != null) {
      s = s.toLowerCase();
      if (s == 'yes' || s == 'y') return true;
      if (s == 'no' || s == 'n') return false;
    }

    return answer();
  }

}