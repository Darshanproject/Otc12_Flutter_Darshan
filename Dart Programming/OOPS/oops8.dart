class A{
  void dispaly(){
    print("This is your comman class");
  }
}
class B extends A{
  void dispaly1(){
    print("This is your father's class");
  }
}
class C extends A{
  void display2(){
    print("This is your class");
  }
}

class D extends A{
  void dispaly3(){
    print("This is your child's class");
  }
}

void main(){
  var obj=B();
  var obj1=C();
  var obj2=D();
  obj.dispaly();
  obj.dispaly1();
  obj1.dispaly();
  obj1.display2();
  obj2.dispaly();
  obj2.dispaly3();
}