// + - * / %

import 'dart:io';

void main(){
  var num,num1,ans;
  print("Enter your firt value here : ");
  num=int.parse(stdin.readLineSync()!);
  print("Enter your second value here : ");
  num1=int.parse(stdin.readLineSync()!);
  ans=num+num1;
  print("This is your addtion of two numebrs $ans");
}