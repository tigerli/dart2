// 获取对象类型
/**
 * 每一个对象都有一个runtimeType的属性，通过这个属性可以获取到该对象的类型（Type的对象）
 */

class Animal {
  
}
void main() {
  // 返回的是一个Type的对象
  print(Animal().runtimeType);// Animal
}