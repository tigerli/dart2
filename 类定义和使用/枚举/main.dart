// 枚举
/**
 * 枚举类型是一种特殊的类，通常用来表示相同类型的一组常量。使用关键字enum定义枚举
 * 枚举每个值都有一个index属性，index从0开始计数
 * 枚举不能被继承，不能创建实例
 */

enum Animal{
  cat,
  dog,
  bird
}

void main(List<String> args) {
  print(Animal.dog.index);// 1
  // 获取所有的枚举值
  List<Animal> animal = Animal.values;
  Animal dog = Animal.dog;
  switch (dog){
    case Animal.cat:
      print('animal is cat');
      break;
    case Animal.dog:
      print('animal is dog');
      break;
    default:
      print('whick animal?');
  }
}