// 隐式接口
/**
 * Dart2 中的每一个类都有一个隐式的接口，这个隐式的接口包含所有的实力成员和实现的接口的实例成员
 * 如果你想创建一个类A支持类B的API函数，但是不想集成B的实现，则类A需要继承类B的接口
 * 继承接口的关键字是implements, 一个类可以继承多个接口
 */

class Animal{
  String _name; // 在接口中，但是是私有的，所以只能在本类中使用
  Animal(this._name);
  run(){
    print('${this._name} is running');
  }
}

// 实现Animal的接口，如果还有其他的接口，可以用,分隔 implements Animal, ...
class Bird implements Animal{
  String _name;
  Bird(this._name);
  run() {
    print('${this._name} can not run');
  }
}
runningAnimal(Animal animal){
  animal.run();
}

void main(List<String> args) {
  runningAnimal(Animal('dog'));
  runningAnimal(Bird('bird'));
}