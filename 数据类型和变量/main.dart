void main() {
  // 数据类型
  /**
   * 整型（int）
   * 整型是不超过64位的，不同平台位数不一样。如果是DartVm，整型的范围是2^63-1到-2^63。
   * 如果需要编译成JS代码，那么整型的范围就是2^53-1到-2^53
   */
  print('整型（int）');
  // 整型10进制
  int a = 1;
  print('整型10进制: a = ${a}');
  // 整型的16进制，以0x开头
  int hex = 0xEABDF;
  print('整型的16进制，以0x开头: a = ${hex}');
  print('\n');

  // 浮点型 (double)
  /**
   * 浮点型是64位的数字，包括小数位，符合IEEE754标准。一个数字只要有小数点，就是double类型
   * 
   * 整数和浮点型都是num类型的子类型。num类型包含基础的操作+（加）、-（减）、*（乘）、/（除）
   * 以及包含一些简单的函数，比如：取证函数abs()等，一些负载的计算函数，可以再math包中找到，
   * 另外需说明的是位移运算>>，是在int类中，所以仅支持整型运算
   */
  print('浮点型 (double)');
  // 普通定义
  double b = 1.2;
  print('普通定义 double类型：${b}');
  // 指数定义
  double exponents = 1.2e10;
  print('指数定义：${exponents}');
  print('\n');

  // 字符串（String）
  /**
   * 字符串类型是使用Unicode-16存储。定义字符类型可以用单引号，也可使用双引号。定义多行字符串
   * 可以使用三个单引号或三个单引号
   */
  print('字符串（String）');
  String c = "this is dart2";
  String c2 = 'this is dart2';
  //使用==判断字符串是否相等
  print(c == c2);
  String c3 = '''
    这是一个
    多行的
    字符
  ''';
  // 在字符串内部可以是用${expression}来替换内容
  String c4 = "this is Dart2";
  String c5 = "It will sat:'${c4.toUpperCase()}'";
  print(c5); // 显示: It will sat:'THIS IS DART2'
  int c6 = 16;
  print('age is ${ c6 * 4}');
  /**
   * 如果不想在字符串里面的转义字符被表达，如：\n、\t等，那么需要在字符串定义前添加 r
   * 表示这是一个原始字符串，不需要转义。
   */
  String c7 = "Hello \n World";
  print(c7);// \n 将显示为换行
  String c8 = r'Hello \n world';
  print(c8);// 显示：Hello \n world
  print(c7 == c8);// false
  print('\n');

  // 布尔型（bool）
  // 布尔型 只有两个值 true 和 false
  print('布尔型（bool）');
  bool d = true;
  bool d2 = false;
  print('${d}');
  print('${d2}');
  print('\n');

  // 类型转换
  /**
   * 所有的非字符串类型，都可以用toString()转为字符串，
   * 数字(num)类型可以舒勇parse方法将字符串转为相对应的数字
   */
  print('类型转换');
  String e = "1.2";
  String e2 = "2";
  int e3 = 12;
  double e4 = 1.5;
  bool e5 = true;

  print(double.parse(e));
  print(int.parse(e2));
  print(e3.toString());
  print(e4.toString());
  print(e5.toString());
  print('\n');

  // 变量
  /**
   * 变量的声明除了具体的类型int、double、String和bool以外，还可以用var声明变量。
   * var可以根据初始化的值判定是什么类型
   * 但是一旦类型确定，就无法更改类型
   * 
   * 变量如果没有赋值，那么变量的默认值就是null，在Dart2中，所以有类型都是对象
   * 所以所有对象的默认值都是null
   */
  print('变量');
  var f = 'this is dart2';
  var f1 = 16;
  var f2 = true;
  var f3 = 3.14;
  print(f is String);
  print(f1 is int);
  print(f2 is bool);
  print(f3 is double);
  // f = 1;// 报错，string 类型无法执行为int类型

  var nullVar;
  print(nullVar == null); // true
  int nullInt;
  print(nullInt == null); // true
  bool nullBool;
  print(nullBool == null); // true

  // 如果变量的类型是动态的变化的，可以使用dynamic 声明
  dynamic f4 = 'this is dart';
  print(f4 is String);// true
  f4 = 1;
  print(f4 is int);// true
  print('\n');

  // 常量
  /**
   * 常量可以用final 和const 的来声明。final和const 都可以做类型的推断
   * 与var 的声明方式一样，也可以具体的赋予某个类型，但是不能和var混淆
   */
  print('常量');
  final finalNum = 12;
  final int finalNum2 = 13;
  const constStr = "hello";
  const String constStr3 = "world";
  //final var finalNum3 = 13;// 报错，不能同时声明final 和 var
  //const var constStr3 = "wrong";// 报错，不能同时声明const 和 var

  /**
   * final 和 const 区别
   * 1.final 的变量只初始化一次，可以使编译时的常量，也可以不是。const 必须是编译时的常量
   * 2.final 只是在第一次运行的时候确定常量值，const必须指定常量值。
   * 比如：final可以是一个函数的计算结果，但是const不行
   * 3.const 可以修饰值，final不可以。const的值必须是const，final可以不是。
   * 
   * ps: 编译时常量，是指在程序编译时就可以确定的值，
   * 比如：一个确定的数值，或者可以获得结果数值表达式；一个确定的字符串等等
   */
  final finalNum3 = 10;// 正确
  final finalNum4 = 10 * finalNum3;//正确
  const constNum4 = 10;
  const constNum5 = 10 * constNum4;//正确

  // const 声明必须是编译时的常量
  final finalDate = new DateTime.now(); // 正确
  //const constDate = new DateTime.now(); // 报错，不是一个常量表达式。不能是一个函数的计算结果
  //print(constDate);
  var varNUm = 12;
  final finalVarNum = varNUm;// 正确
  //const constVarNum = varNUm;// 报错不是常量的表达式

  const constConstNum = constNum4;// 正确

  // const修饰的值，必须是常量
  //final finalConst = const [varNUm, 1, 2];// 错误，不是一个常量表达式
  final finalConst2 = const [constNum4, 1, 2];// 正确
  const constList = const [constNum4]; // 错误
}