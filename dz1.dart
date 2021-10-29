import 'dart:io';

void main() {
  print(task2v1(2001, 20));
}

String task1(String stroka, int chislo, bool istina) {
  String res = '$stroka-строка, $chislo -число, $istina-истина';
  return res;
}

String task2v1(int birthday, int age) {
  int time = DateTime.now().year;
  int minus = time - birthday;
  String? res;
  if (minus == age) {
    res = 'denrojden bylo';
  } else
    res = 'den rojdenye skoro';
  return res;
}

String task2v2(int birthday, int age) {
  int time = DateTime.now().year;
  int minus = time - birthday;
  String? res;
  bool sravneniye = minus == age;
  switch (sravneniye) {
    case true:
      res = 'den rojdenye bylo';
      break;
    default:
      res = 'den rojden skoro';
      break;
  }

  return res;
}

String task3(List a) {
  List chet = [];
  List nechet = [];
  for (int i = 0; i < a.length; i++) {
    if (a[i].isEven) {
      chet.add(a[i]);
    } else
      nechet.add(a[i]);
  }
  return "chet $chet\nnechet$nechet";
}

void task4() {
  String stop = '';
  while (stop != 'stop') {
    print('Напишите число');
    dynamic chislo = stdin.readLineSync();
    if (chislo ==
        'stop') //" || chislo == 'стоп')  ПОЧЕМУ НЕ РАДОТАЕТ С РУССКИМ "СТОП"? НЕ РАССПАЗНАЕТ И НЕ БРЕЙКАЕТЮ
    {
      break;
    }
    int chislo1 = int.parse(chislo);
    if (chislo1 > 0) {
      print('Больше 0');
    } else
      print('Меньше 0');
  }
}
