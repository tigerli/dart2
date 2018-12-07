// 实例变量
/**
 * 内一个实例变量都有一个隐式的Get方法，如果变量不是final类型的，那么实例变量会有一个隐式的Set方法
 * 如果一个实例变量有初始值，那么它的值在构造方法生效之前，就已经被赋予。
 * 如果想重写Get和Set方法，可以用关键字get和set实现
 * Dart2中以_开头的变量和方法，都是私有的。
 */
class Rectangle {
  num left = 10;
  num _left_width = 12; // 私有变量
  // 定义多个变量
  num top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);
  /**
   * 定义两个计算属性，righe and bottom
   * 需要注意的是，get和set需要成对出现
   * 重写get
   */
  num get right => left + width;
  num get r{
    return width + top;
  }

  // 重写set
  set right(num value) => left = value - width;
  set r(num value) => top + width;
}


class Car{
  int _doors = 4;
  int get doors => _doors;
  set doors(int numberOfDoors){
    if(numberOfDoors >= 2 && numberOfDoors <= 6){
      _doors = numberOfDoors;
    }
  }
}

class Player{
  int health_point;
  
  int get hp{
    return health_point;
  }
  set hp(int value){
    health_point += value;
  }

  Player(this.health_point);
}

class NumberTest{
  num n;
  NumberTest(this.n);

  get nn{
    return n;
  }

  set nn (int v) => n = nn + v;
}
void main() {
  // var rect = Rectangle(3, 4, 20, 15);
  // print('left: ${rect.left}');
  // print('top: ${rect.top}');
  // print('width: ${rect.width}');
  // print('height: ${rect.height}');
  // rect.r = 3;
  // print('r: ${rect.r}');
  // print('top: ${rect.top }');

  // Player bob = new Player(100);
  // print(bob.hp);
  // bob.hp =- 10;
  // print(bob.hp);
  // bob.hp = 10;
  // print(bob.hp);

  NumberTest test = new NumberTest(100);
  print(test.nn);
  test.nn = 100;
  print(test.nn);
}