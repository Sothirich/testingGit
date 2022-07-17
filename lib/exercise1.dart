import 'dart:io';

void ex4() {
  stdout.write("input: ");
  int? n = int.parse(stdin.readLineSync()!);

  int second = int.parse(n.toString() + n.toString());
  int third = int.parse(second.toString() + n.toString());
  int sum = n + second + third;

  print("Output: $n+$n$n+$n$n$n = $sum");
}

void ex1() {
  stdout.write("hour: ");
  int? h = int.parse(stdin.readLineSync()!);
  stdout.write("minute: ");
  int? mn = int.parse(stdin.readLineSync()!);
  stdout.write("seond: ");
  int? s = int.parse(stdin.readLineSync()!);

  int sum = (h * 3600) + (mn * 60) + s;

  print("Total seconds: $sum");
}

void ex2() {
  stdout.write("first number: ");
  double? num1 = double.parse(stdin.readLineSync()!);
  stdout.write("second number: ");
  double? num2 = double.parse(stdin.readLineSync()!);

  if (num1 < num2) {
    print("$num2 is greater than $num1");
  } else if (num1 > num2) {
    print("$num1 is greater than $num2");
  } else {
    print("$num2 is equal to $num1");
  }
}

void ex3() {
  for (int i = 1; i <= 7; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(i);
    }
    print("");
  }
  print("");

  for (int i = 7; i >= 0; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write(i);
    }
    print("");
  }
  print("");

  for (int i = 1; i <= 4; i++) {
    for (int j = 4; j >= 1; j--) {
      if (j > i) {
        stdout.write("  ");
      } else {
        stdout.write("* ");
      }
    }
    print("");
  }
  print("");

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    print("");
  }
  print("");

  for (int i = 1; i <= 4; i++) {
    for (int j = 7; j >= 1; j--) {
      if (i + j >= 9 || i - j > 0) {
        stdout.write("  ");
      } else {
        stdout.write("* ");
      }
    }
    print("");
  }
  print("");
}

void ex5() {
  stdout.write("String: ");
  List<String> strArray = stdin.readLineSync()!.trim().split("");

  stdout.write("'${strArray.join()}': ");
  var temp = strArray[0];
  strArray[0] = strArray[strArray.length - 1];
  strArray[strArray.length - 1] = temp;

  stdout.write("'${strArray.join()}'");
}

void ex6() {
  stdout.write("Numbers(Seperate by space): ");
  List<String> numList = stdin
      .readLineSync()!
      .replaceAll(',', ' ')
      .trim()
      .split(RegExp(r' +'))
      .toSet()
      .toList();
  List<String> evenNumList = [];
  List<String> oddNumList = [];

  print("\nNumber: $numList");

  for (int i = 0; i < numList.length; i++) {
    if (int.parse(numList[i]).isEven) {
      evenNumList.add(numList[i]);
    } else {
      oddNumList.add(numList[i]);
    }
  }

  print("Odd numbers : $oddNumList");
  print("Even numbers: $evenNumList");
}

void ex7() {
  stdout.write("Integer 1: ");
  int num1 = int.parse(stdin.readLineSync()!).round();
  stdout.write("Integer 2: ");
  int num2 = int.parse(stdin.readLineSync()!).round();
  stdout.write("Opertor: ");
  String op = stdin.readLineSync()!.trim();

  switch (op) {
    case "+":
      stdout.write("\nResult: $num1 + $num2 = ${num1 + num2}");
      break;
    case "-":
      stdout.write("\nResult: $num1 - $num2 = ${num1 - num2}");
      break;
    case "*":
      stdout.write("\nResult: $num1 * $num2 = ${num1 * num2}");
      break;
    case "/":
      stdout.write("\nResult: $num1 / $num2 = ${num1 / num2}");
      break;
    default:
      stdout.write("Wrong Operation!!");
  }
}
