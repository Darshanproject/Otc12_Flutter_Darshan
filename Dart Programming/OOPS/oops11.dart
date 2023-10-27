class person{
  void walk(){
    print("Human can walk");
  }
}
class boy extends person{
  void walk(){
    print("Boy can run");
  }
}

void main(){
  var obj=person();
  obj.walk();
}