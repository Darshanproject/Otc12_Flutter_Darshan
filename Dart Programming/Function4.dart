import 'dart:io';

void main(){
  int num,num1;


  print("Enter your values here :");
  num=int.parse(stdin.readLineSync()!);
  num1=int.parse(stdin.readLineSync()!);
  int ans=sum(num1,num);
print("This is your answer $ans");
}

int sum(int num,int num1){
  
  return num+num1;
}