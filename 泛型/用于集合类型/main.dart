// 用于集合类型
/**
 * 泛型可以用于List和Map的直接参数化，也可以通过构造函数参数化
 * Dart2泛型类型被具体化，这意味着他们在运行时携带着自己的类型信息
 */

void main(List<String> args) {
  // 直接参数化
  var animal = <String>['cat', 'dog'];
  var animalMap = <String, String>{
    'cat': 'tom',
    'dog': 'jerry'
  };

  // 使用构造函数参数化
  var animalList = List<String>();
  var animalMap2 = Map<String, String>();

  animalList.addAll(['bird', 'dog']);
  // 转换set时，需要制定类型
  var animalSet = Set<String>.from(animalList);
  // 可以直接判定类型
  print(animalList is List<String>);// true
}