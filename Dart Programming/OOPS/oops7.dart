class A{
  void display(){
    print("This is your grand Father's class");
  }
}
class B extends A{
    void display1(){
    print("This is your  Father's class");
  }
}
class C extends B{
    void display2(){
    print("This is your child's class");
  }
}

void main(){
  var obj=C();
  obj.display();
  obj.display1();
  obj.display2();
}