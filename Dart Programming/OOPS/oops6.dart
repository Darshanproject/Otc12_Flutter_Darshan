class A{
  void dispaly(){
    print("This is parent class");
  }
}

class B extends A{
  void dispaly1(){
    print("This is your child class");
  }
}

void main(){
  var obj=B();
  obj.dispaly();
  obj.dispaly1();
}