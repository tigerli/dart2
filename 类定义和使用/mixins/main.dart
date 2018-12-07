// mixins
/**
 * mixins 是给类添加新的特性的方式，也是一种重用类代码的一种方式
 * mixins的关键字是with.
 * with不能单独使用，必须根治extends使用
 */

class Fly{
  fly(){
    print('flying');
  }
}

class Animal{}

class Bird extends Animal with Fly{

}

void main(List<String> args) {
  var bird = Bird();
  bird.fly();
}