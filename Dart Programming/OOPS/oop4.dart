import 'dart:io';

class sum{
  sum(int num,int num1){
    var ans=num+num1;
    print("This is your par con $ans");
  }
}
void main(){
  var a,b;
  print("Enter your first Number here: ");
  a=int.parse(stdin.readLineSync()!);
  print("Enter your Second Number here: ");
  b=int.parse(stdin.readLineSync()!);
  var obj=sum(a,b);
}