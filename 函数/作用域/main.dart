// Dart2语言的变量是有作用域的，变量的作用域是有代码布局决定的
var level1 = 'level';
void main() {
  var level2 = 'level2';

  // 定义一个内部函数
  void testScope(){
    var level3 = 'level3';
    print(level1);
    print(level2);
    print(level3);
  }

  testScope();
}