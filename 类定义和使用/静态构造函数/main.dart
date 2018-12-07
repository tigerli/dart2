// 静态构造函数
/**
 * 如果类的对象不会有任何变化，那么可以让这些对象是编译时常量
 * 通过创建静态构造函数，并且所有成员属性是final的来实现
 * 静态构造函数，并不是都会返回一个编译时的常量
 */
class Animal{
  final String name;
  final String color;

  // 静态构造函数
  const Animal(this.name, this.color);
}

void main(List<String> args) {
  var cat = const Animal('cat', 'yellow');// 常量
  var cat2 = const Animal('cat', 'yellow');
  var cat3 = Animal('cat', 'yellow'); // !非常量

  // 构造两个相同的编译时常量，实际上是一个常量
  print(identical(cat, cat2));// true
  print(identical(cat, cat3));// false

  // 在常量上下文中， 可以省略构造函数或文字前面的常量
  const cats = const{
    'bluscat': const [const Animal('cat', 'blue')],
    'yellowcat': const [const Animal('cat', 'yellow')]
  };

  // 上面的代码可以写成羡慕这样，这是Dart2的新特性
  const cats2 = {
    'bluscat': [Animal('cat', 'blue')],
    'yellowcat': [Animal('cat', 'yellow')]
  };

  print(cats2);
}