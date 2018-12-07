// 类变量和方法
/**
 * 使用关键之static,声明类变量和类方法
 */

class Animal{
  static var name;// 类变量
  static const color = 'yellow'; // 类常量

  // 类方法
  static run(){
    print('running');
  }
}

void main(List<String> args) {
  Animal.name = 'dog';
  print(Animal.name);// dog
  Animal.run();
}