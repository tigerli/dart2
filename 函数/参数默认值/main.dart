void main() {
  // 默认参数
  /**
   * 函数的参数可以用=来定义默认值，如果没有用=富裕默认值，那么参数默认值为NUll
   * 参数的默认值必须是编译时的常量
   */
  travel();
  travel(from: 'japan');
  animals();
}

void travel({String from='china', String to='usa'}){
  print('From ${from} to ${to}');
}

// list和map的默认值需要用const修饰
void animals([List<String> names = const ['cat', 'dog'], Map<String, String> nameMap = const{
  'c': 'cat',
  'd': 'dog'
}]){
  print('animals: ${names}');
  print('nameMap: ${nameMap}');
}