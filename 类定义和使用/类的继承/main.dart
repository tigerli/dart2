// 类的继承
/**
 * 使用extends 来继承父类，super来指定父类
 * 子类可以重载父类的实例方法，Setter和Getter,使用@override注释重新的方法
 * 重载onSuchMethod()方法，可以再对象视图调用不存在的方法或者变量时调用。但是，你不能调用一个不存在的方法
 * 除非是以下情况的一种
 * 1. 一个静态类型的dynamic的变量
 * 2. 接收方有一个定义未实现的方法的静态类型（抽象的也可以），并且接受方式dynamic并且有一个onSuchMethod()的实现
 * 与类Object中的实现不同
 */

class Animal{
  String name;
  String color = 'yellow';

  Animal.createInstance(Map values){
    print('in animal');
    name = values['name'];
  }

  run(){
    print('${this.name} is running');
  }
}

// extends 继承关键字
class Bird extends Animal{
  String name = 'blue bird';
  String desc;
  Bird.createInstance(Map values):
  super.createInstance(values){
    desc = name;// 初始化列表，注意这里没有this
    print('in bird');// 父类方法调用使用super
  }

  @override
  run() {
    print('${this.name} can not run');
  }

  @override
  void onSuchMethod(Invocation invocation){
    print('you tried to use a non-existent member:'+'${invocation.memberName}');
  }
}

void main(List<String> args) {
  
}