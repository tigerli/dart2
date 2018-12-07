
/**
 * Dart2 的异常与Java是非常类似的。
 * Dart2 的异常时Exception或者Error（包括他们的子类）的类型
 * 甚至可以是非Exception或者Error类，也可以抛出，但是不建议这么使用。
 */
/**
 * Exception主要是程序本身可以处理的异常，比如：IOException。我们处理的异常也是以这种异常为主
 * Error是程序无法处理的错误，标示运行应用程序中比较严重问题。大多数错误与代码编写者执行的操作无关，
 * 而标示代码运行时DartVM出现的问题，比如：内存溢出（OutOfMemoryError）等。
 * 
 * 与Java不同，Dart2是不检测异常是否声明的，也就是说方法或者函数不需要声明要抛出那些异常
 */
 testException(){
    throw ('this is exception');
    //throw FormatException('this is exception');//抛出FormatException异常
    //throw Exception('this is exception');//抛出Exception异常
  }

void main() {
  // 抛出异常
  /**
   * 使用 throw抛出异常，异常可以使Exception或者Error类型的，也可以是其他类型的，
   * 另外，throw语句在Dart2中也是一个表达式，因此可以是=>
   */
 

  try {
    testException();
  }on FormatException catch (e) { // 如果匹配不到FormatException,则会继续匹配
    print('catch format exception');
    print(e);
    //rethrow; // 重新抛出异常
  }on Exception{// 匹配不到Exception，会继续匹配
    print('catch exception');
  }catch(e, r){// 匹配所有类型的异常，e是异常对象，r是StackTrace对象，异常的堆栈信息
    print(e);
  }finally{
    print('this is finally');//finally内部的语句，无论是否有异常，都会执行。
  }
}