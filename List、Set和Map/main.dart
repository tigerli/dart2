void main () {
  // Dart2 提供了3中核心的集合类型List(列表)、Set(集合)和Map(映射)
  // List（列表）
  /**
   * List的声明，可以用var也可用List
   * 文档：https://api.dartlang.org/stable/2.0.0/dart-core/List-class.html
   */
  // 非固定长度
  var testList = List();
  // 也可以 List testList = List()
  print(testList.length);
  // 固定长度
  var fixedList = List(2);
  print(fixedList);
  
  testList.add('value');
  testList.add(123);

  //var fixedList.add(1); // 报错。固定长度不能添加元素
  fixedList[0] = 123;

  // 元素类型固定
  var typeList = List<String>();// 只能添加字符串类型的元素
  typeList.add("value");// 正确
  //typeList.add(123);// 错误类型不正确

  // 直接复制
  var numList = [1, 2, 3];
  //numList.add('value');// 错误类型不正确
  var dyList = [true, 'hello', 1];
  dyList.add(1.2);// 正确

  // Set（集合）
  /**
   * Set是没有顺序且不能重复的集合，所以不能用过索引去获取值
   * 文档：https://api.dartlang.org/stable/2.1.0/dart-core/Set-class.html
   */
  var testSet = new Set();
  //var testSet2 = new Set(2);// 错误，Set没有固定元素的定义
  print(testSet.length);// 0

  testSet.add(1);
  testSet.add(1);;// 重复元素无效
  testSet.add('a');
  print(testSet);

  print(testSet.contains(1));// contains是否包含某个元素
  testSet.addAll(['b', 'c']);
  print(testSet);

  testSet.remove('b');
  print(testSet);
  // Map（映射）
  /**
   * 映射是无序的键值对，下面是常用的属性和方法
   * 文档：https://www.dartlang.org/guides/libraries/library-tour#maps
   */
  // 常用两种定义方式
  var testMap = Map();
  var testMap2 = {
    'a': 'this is a',
    'b': 'this is b',
    'c': 'this is c'
  };
  // 长度属性
  print(testMap.length); // 0
  // 获取值
  print(testMap[2]);// this is a
  // 如果没有key, 返回null
  print(testMap['1']);

  // 需要注意的是keys 和 values 是属性不是方法
  print(testMap2.keys);// 返回所有key
  print(testMap2.values); // 返回所有values

  // key: value 的类型可以指定
  var intMap = Map<int, String>();
  intMap[1] = '12';
  //intMap['1'] = 'dsa';// 错误，类型不正确
  intMap[2] = '12';
  // 删除元素
  intMap.remove(2);
  // 是否存在key
  print(intMap.containsKey(1));// true

  // 通用方法
  /**
   * List、Set和Map有一些通用的方法。其中的一些通用方法都来自于类Iterable
   * List和Set是iterable类的实现
   * 虽然Map没有实现Iterable，但是Map的属性Keys和values都是Iterable对象
   */
  // 通用属性 isEmpty和isNotEmpty
  var testDefaultSet = Set.from(["a", 'b', 'c']);
  var testDefaultList = [1, 2, 3, 4];
  var testDefaultMap = Map();

  print(testDefaultSet.isEmpty);
  print(testDefaultList.isEmpty);
  print(testDefaultMap.isNotEmpty);

  testMap.addAll({
    'zh': 'china',
    'us': 'usa'
  });

  // forEach方法
  testList.forEach((num) => print('i am num ${num}'));
  testMap.forEach((k, v) => print('${k} is ${v}'));
  
  // iterable提供了 map 方法， 来处理每一个集合总的对象，并返回一个结果
  var setIter = testDefaultSet.map((v) => v.toUpperCase());
  print(setIter);

  // 可以用toList和toSet将结果转换成就列表或者集合
  var listIter = testDefaultSet.map((v) => v.toUpperCase()).toList();
  print(listIter);

  // iterable提供了where方法，来过滤及各种的值，并返回一个集合
  var whereList = testDefaultList.where((num) => num > 2).toList();
  print(whereList);

  // iterable 提供了any方法和every方法，来判断集合中的值是否符合条件，并返回bool
  print(testDefaultList.any((num) => num > 2));
  print(testDefaultList.every((num) => num > 2));
}