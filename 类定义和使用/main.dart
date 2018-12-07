/**
 * Dart2中的类都是继承于类Object。
 * Dart2中每一个类都有一个超类（Object）,但是一个类的主题可以在多个类层次中使用
 */
// 类的定义和使用
/**
 * Dart2中使用关键字class定义类
 * 调用.和?.调用类的成员。
 * ?.的用法是当对象不为空时，调用成员，为空时，跳过不调用。
 */
class Animal {
  String name;

  // 构造函数
  Animal(String name){
    this.name = name;
  }

  run(){
    print('${this.name} is runing');
  }
}

class Test {
  String name;
  Test({this.name});

}

void main(List<String> args) {
  // 使用构造函数创建对象
  var cat = Animal('cat');

  // 也可以用new来创建对象，new从Dart2开始是可选的
  var dog = new Animal('dog');
  cat.run();
  dog.run();

  // cat 不是null时，name赋予新值
  cat?.name = 'small cat';
  cat.run();// small cat is runing

  Animal nullAnimal;
  // nullAniaml是null，如果直接使用nullAniamll.name，会对象为空的报错
  nullAnimal?.name = 'null';

  var test = Test();
  test?.name = 'dsa';
  print(test?.name );
}
