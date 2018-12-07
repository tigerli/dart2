// 工程构造函数
/**
 * 使用关键字final实现工厂构造函数，工厂构造函数可以让你不必要每次都创建一个新的对象，就好像是有一个缓存
 * 缓存了老的对象
 * 工程构造函数中不能使用this
 */
class Logger {
  final String name;
  bool mute = false;
  
  // 私有变量
  static final Map<String, Logger> _cache = 
  <String, Logger>{};

  factory Logger(String name){
    if(_cache.containsKey(name)){
      return _cache[name];
    }else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg){
    if(!mute){
      print(msg);
    }
  }
}

void main(List<String> args) {
  var p1 = Logger('Part1');
  p1.log('this is part1');

  var p2 = Logger('Part2');
  p2.log('this is part2');
}