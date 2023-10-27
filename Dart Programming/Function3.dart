import 'dart:io';

void main(){
var ans=sum();
print("This is your answer $ans");
}

int sum(){
  var num,num1;
  print("Enter your values here :");
  num=int.parse(stdin.readLineSync()!);
  num1=int.parse(stdin.readLineSync()!);
  return num+num1;
}