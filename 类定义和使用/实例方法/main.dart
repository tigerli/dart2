// 实例方法
/**
 * 实例方法是对象中的函数，实例方法中可以使用实例变量和this
 */

class Animal{
  String name;
  Animal(this.name);

  // 实例方法
  void run(){
    print('${this.name} is running');
  }
}
void main(List<String> args) {
  Animal animal= new Animal('cat');
  animal.run();
}