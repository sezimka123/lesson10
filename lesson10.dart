import 'dart:io';
import 'dart:math';

void main() {
  // int random = Random().nextInt(100);
  // print(random);

  // int min = 50;
  // int max = 100;
  // int random2 = min + Random().nextInt(max - min);
  // print(random2);
  print("Enter the number from 1 to 100 so that computer could guess it: ");
  int input = int.parse(stdin.readLineSync()!);
  binarySearch();
}

binarySearch() {
  int min = 1;
  int max = 100;
  int count = 0;

  while (min <= max) {
    int middle = (min + max) ~/2;
    count++;
    print("Is it $middle?\n1) Yes\n2) Greater\n3) Less");
    int answer = int.parse(stdin.readLineSync()!);
    if (answer == 1) {
      print("Got it in $count steps!");
      break;
    } else if (answer == 2) {
      min = middle;
    } else if (answer == 3) {
      max = middle;
    } else {
      print("No such option");
    }
  }
  
  
}