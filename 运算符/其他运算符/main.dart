void main() {
  /**
   * ??（是否为空）
   * expr?val1:val2（三元运算符）
   * ..（级联运算）
   * .（成员访问）
   * ?.（有条件的成员访问）
   * ()（函数调用）
   * []（列表索引的值）
   */
  var nullVar;
  var intVar = 12;
  
  // 如果 nullVar是空，则赋值intVar
  nullVar ??= intVar;
  print(nullVar);

  // 如果 intVar大于10则返回a否则返回b
  var strVar = intVar > 10 ? 'a' : 'b';
  print(strVar);

  // .. 允许你在同一个对象上连续进行操作
  var listVar = [1, 2, 3, 4];
  listVar.toSet()
  ..add(5)
  ..add(1);
  print(listVar);
  
  // 相当于
  var setVar = listVar.toSet();
  setVar.add(5);
  print(setVar);

  // ?. 允许左侧的对象为空
  var mapVar;
  print(mapVar?.length);// null
  //print(mapVar.length);// 报错，mapVar时空
  print(setVar?.length);// 5
}