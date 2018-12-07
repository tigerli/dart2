void main() {
  // 类型测试运算符有：
  /**
   * is（判断是否某一类）
   * is!（判断是否不是某一类）
   * as（将对象作为某一类）
   */
  var testInt = 123;
  print(testInt is String);// false;
  print(testInt is! String);// true
  print(testInt is num); // true int是num的子类
  print(testInt is int);// true

  // as 只能用于子类和父类之间的转换使用
  print((testInt as num) is num);// true. 将testInt作为num运行
  //print((testInt as double) is double);// 报错. double不是int的子类型
}