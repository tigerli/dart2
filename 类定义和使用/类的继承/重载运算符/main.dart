// 重载运算符
/**
 * 可以重载的运算符有
 * < + | []
 * > / ^ []=
 * <= ~/ & ~
 * >= * << ==
 * - % >>    
 */

class Person {
  String name;
  Person(this.name);
  // 重载 +
  Person operator + (Person p){
    return Person(this.name + ' 加 ' + p.name);
  }

  // 重载 -
  Person operator - (Person p){
    return Person(this.name + ' 减 ' + p.name);
  }
}

void main(List<String> args) {
  var man = Person('man');
  var woman = Person('woman');
  var person = man + woman;
  var person1 = man - woman;

  print(person.name); // man *** woman
  print(person1.name); // man *** woman
}