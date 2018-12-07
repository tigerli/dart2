// 构造函数
/**
 * 构造函数的定义，可以通过函数名为ClassName何ClassName.identifier（命名的构造函数Named Constructors）定义
 * 通过命名的构造函数可以轻松实现多个不同的构造函数
 * 如果类没有构造函数，那么默认会有一个没有参数的构造函数
 */
class Animal {
  String name;
  String color = 'yellow';

  // Animal(String name){
  //   this.name = name;
  // }
  // 上面的构造函数，可以简写为
  Animal(this.name, this.color);

  Animal.createInstance(Map values){
    name = values['name'];
    color = values['color'];
  }

  run(){
    print('${this.name} is running,');
  }
}
void main() {
  var animal = Animal.createInstance({'name': 'dog', 'color': 'red'});

  print(animal.name);

}