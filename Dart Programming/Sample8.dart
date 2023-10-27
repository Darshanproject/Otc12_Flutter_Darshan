/*
switch(exp){
  case 1:
  print;
  break;
  deafult:
  false;
  break;
}

*/

import 'dart:io';

void main()
{
  var days;
  print("Enter your days here  :");
  days=int.parse(stdin.readLineSync()!);
  switch(days){
    case 1:
    print("Monday");
    break;
    case 2:
    print("Tuesday");
    break;
    case 3:
    print("Wednesday");
    break;
    case 4:
    print("Thursday");
    break;
    case 5:
    print("Friday");
    break;
    case 6:
    print("Saturday");
    break;
    case 7:
    print("Sunday");
    break;
    default:
    print("Invalid input");
    break;
  }
}