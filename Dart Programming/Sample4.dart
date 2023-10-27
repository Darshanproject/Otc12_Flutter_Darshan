import 'dart:io';
void main()
{
  var name;
  var age;
  print("Enter your name here : ");
  name=stdin.readLineSync()!;
  print("Enter your age here : ");
  age=int.parse(stdin.readLineSync()!);
  print("this is your name $name ?");
  print("is this your age $age ?");
}