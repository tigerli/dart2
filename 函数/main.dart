
// Dart2是纯面向对象的语言，所有函数也是一个对象
  /**
   * 所有函数都是基于Function
   * 函数也可作为参数，传入其他的函数中
   * 所有函数都有返回值，如果没有指定返回值，则返回null
   */
  // 基本定义
// 定义一个不带返回值的函数，可以带void，也可以不带
void say(var word){
  print('I say "${word}"');
}

// 参数可以不用指定类型，如果不指定，则默认是var
bool isInt(numVer){
  return numVer is int;
}

// 如果函数只有一个retrun 语句可以用 => 简写
// 需要注意 => 后面只能是一个表达式或者是单条语句
bool isInt2(numVar) => numVar is int;

void main() {
  say('hello world');// I say "hello world"
  print(isInt('a'));
  print(isInt(1));
}