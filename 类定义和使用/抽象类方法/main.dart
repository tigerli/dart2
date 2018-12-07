// 抽象类和方法
/**
 * 使用关键字 abstract 声明的类，就是抽象类。抽象方法是没有实现体的方法，抽象方法只能存在于抽象类中
 * 实例方法、Setter和Getter方法都可以是抽象方法
 * 抽象类不能被实例化。如果想要抽象类进行实例化，可以用工厂构造函数实现
 * 抽象类通常来定义接口
 */
abstract class Animal{
  String color = 'blue';

  // 抽象方法
  run();
}

class Brid extends Animal{

  String name;
  Brid(this.name);

  // 抽象方法的实现
  
  run() {
    print('A ${this.color} ${this.name} is flying');
  }
}


void main(List<String> args) {
  var bird = Brid('tom');
  bird.run();
}