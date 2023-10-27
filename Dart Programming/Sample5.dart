/*
if(Condtion){
  true 
}else{
  false
}
*/

import 'dart:io';

void main(){
  var num;
  print("Enter your age here : ");
  num=int.parse(stdin.readLineSync()!);
  if(num > 18){
    print("Eligable");
  }else{
    print("Not Eligable");
  }
}