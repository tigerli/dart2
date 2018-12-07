// 泛型
/**
 * 泛型（Generics）使用<...>来定义
 * 按照惯例，Dart2中使用E、T、K和V声明类型变量。比如：List<E>等
 */
/**
 * 为什么使用泛型！
 * 1.指定泛型类型，可以使代码更安全，容易解读
 * 2.使用泛型还可以避免代码重复
 */

abstract class ObjectCache{
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache{
  String getByKey(String key);
  void setByKey(String key, String value);
}
// 上面两个类，可以使用泛型精简为一个类
abstract class Cache<T>{
  T getByKey(String key);
  void setByKey(String key, T value);
}

void main(List<String> args) {
  // 指定String类型，只能添加String到list,添加其他类型会报错
  List<String> strList = List<String>();
  strList.add('a');
  //strList.add(1);// 类型错误

}