// 重定向构造函数
/**
 * 所谓重定向构造函数，是指在一个构造函数中只想另一个构造函数
 * 但是重定向构造函数的函数体是空的
 */

class Point {
  num x, y;
  // 主体构造函数
  Point(this.x, this.y);

  // 重定向构造函数
  Point.alongXAxis(num x) : this(x, 0);
}

void main(List<String> args) {
  Point point = Point.alongXAxis(2);
  print(point.x);
  print(point.y);

  print(point.x);
}