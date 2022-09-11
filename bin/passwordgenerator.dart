import 'package:passwordgenerator/passwordgenerator.dart' as passwordgenerator;
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List numbers = List.generate(10, (index) => Random().nextInt(255));
  List charcter = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];
  List symblos = [
    '/',
    '?',
    ':',
    ';',
    '<',
    '>',
    '[',
    ']',
    '%',
    '@',
    '#',
    ')',
    '(',
    '+',
    '=',
    '_',
    '-',
    '*',
    '&',
    '^',
    '!',
    '~'
  ];
  print("what is the size of your password");
  var size;
  size = stdin.readLineSync();
  size = int.parse(size);
  var randchar;
  var randsymbo;
  var randnumber;
  var randoption;
  List password = [];
  for (int i = 0; i < size; i++) {
    randoption = Random().nextInt(3);
    if (randoption == 0) {
      randchar = Random().nextInt(25);
      password.add(charcter[randchar]);
    } else if (randoption == 1) {
      randsymbo = Random().nextInt(21);
      password.add(symblos[randsymbo]);
    } else {
      randnumber = Random().nextInt(9);
      password.add(numbers[randnumber]);
    }
  }
  print(password);
}
