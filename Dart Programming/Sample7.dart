/*
if(condtion)
{
  if(Condtion){

  }
}else{

}
*/



import 'dart:io';

void main(){
var marks;
print("Enter your marks : ");
marks=int.parse(stdin.readLineSync()!);
if(marks > 0 && marks < 100){
  if(marks>=90 && marks <100){
  print("A Grade!!!");
}else if(marks >= 80 && marks < 90)
{
  print("B Grade !!");
}else if(marks >= 60 && marks <80)
{
  print("C Grade");
}else if(marks >= 40 && marks <60){
  print("D Grade");
}else if(marks > 0 && marks <40){
  print("Fail");
}
}
else{
  print("Invalid Input");
}
}