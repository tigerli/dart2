
/**
 * 父类中的命名构造函数不能被子类继承。如果想要子类也拥有一个父类一样的名字在构造函数，必须在子类也实现这个构造函数
 * 默认情况下，子类只能调用父类的无名，无参数的构造函数。
 * 父类的无名构造函数会在子类的构造函数前调用，如果initializer list也同时定义了，则先执行initializer list中
 * 的内容，然后在执行父类的无名参数构造函数，最后调用子类自己的无名无参数构造函数，即下面得顺序
 * 1. initializer list（初始化列表）
 * 2. superclass's no-arg constructor
 * 3. main class's noarg constructor
 * 
 * 如果父类不显示提供无名无参数构造函数的构造函数，在子类中必须显式调用父类的一个构造函数。这种情况下，调用父类
 * 的构造函数的代码放在子类构造函数名后，子类构造函数体前，中间使用：（colon）分割
 * 在开发状态下，初始化列表可以使用assert表达式
 */
class Animal{
  String name;
  String color = 'yellow';
  Animal.createInstance(Map values){
    print('in animal（爸爸）');
    name = values['name'];
  }

  run(){
    print('${this.name} is running');
  }
}

// extends 继承的关键字
class Bird extends Animal{
  String name = "blue bird";
  String desc;
  Bird.createInstance(Map values):// 初始化列表，注意这里没有this
   super.createInstance(values){ // 父类方法调用使用super
    print('in bird(儿子)');
    desc = name;
  }

}

void main(List<String> args) {
  var bird = Bird.createInstance({
    'name': 'bird'
  });
  print(bird);
  print(bird.name);
  print(bird.desc);
}