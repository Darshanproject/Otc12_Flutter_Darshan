class person{
  var age;
  var name;
  void setAge(int age){
    this.age=age;
  }
  int getAge(){
    return age;
  }
  void setName(String name){
    this.name=name;
  }
  String getName(){
    return name;
  }
}

void main(){
  var obj=person();
  obj.setName("Harsh");
  obj.setAge(28);
  print(obj.getName());
  print(obj.getAge());
}