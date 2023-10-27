/*
(condtion)?exp1:exp2;
realitonl > < >= <= == =!
*/
import 'dart:io';

void main()
{
  var num;
  print("Enter your age here : ");
  num=int.parse(stdin.readLineSync()!);
  (num > 18)?print("Your condtion is true"):print("Your condtion is false");
}