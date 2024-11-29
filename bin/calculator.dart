import 'dart:io';

void main(List<String> arguments) {

  stdout.write('Enter the first number: ');
  int num1 = int.parse(stdin.readLineSync());

  stdout.write('Enter the second number: ');
  int num2 = int.parse(stdin.readLineSync());

  stdout.write('Enter [+] for addition\n[-] for subtraction\n[*] for multiplication\n[/] for division\n[ave] for average: ');
  String operator = stdin.readLineSync();

  int result = calculator(num1, num2, operator);
  print('The result is $result.');


}

int calculator(int num1, int num2, String operator) {

  switch (operator) {
    case '+': return num1 + num2;
    break;

    case '-': return num1 - num2;
    break;

    case '*': return num1 * num2;
    break;

    case '/': return num1 ~/ num2;
    break;

    case 'ave': return ((num1 + num2) ~/ 2);
    break;

    default:
      throw ArgumentError('Invalid operator: $operator.');
  }
}


