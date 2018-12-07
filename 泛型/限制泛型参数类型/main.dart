// 限制泛型参数类型
/**
 * 当实现一个泛型时，如果需要限制它参数的类型，可以使用extends关键字
 * 
 */
class SomeBaseClass{}
class Foo<T extends SomeBaseClass> {
  
}
class Extender extends SomeBaseClass{

}

void main(List<String> args) {
  // 直接使用SomeBaseClass或者它的后台Extender都是可以的
  var someBaseClassFoo = new Foo<SomeBaseClass>();
  var extenderFoo = new Foo<Extender>();

  // 页可以什么参数也不指定
  var foo = new Foo();
}