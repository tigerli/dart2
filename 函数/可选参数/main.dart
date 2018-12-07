// 可选参数
/**
 * 函数允许定义可选的参数
 * 定义可选参数有两种方式一种是用{}，另一种使用[]。
 * 区别就是，如果用{}声明，在使用时必须带着参数名
 * 如：a:123; 如果用[]声明，在使用时需要按照顺序使用
 */
void travel({String from, String to}){
  print('From ${from} to ${to}');
}

void trabel2(String from, [String to, String city]){
  print('from ${from} to ${to} and ${city}');
}

void main() {
  travel();// From null to null
  // 必须传入的是哪个参数的值
  travel(to: 'usa');// From null to usa;
  travel(from: 'china', to: 'usa');// From china to usa;
  trabel2('china');// From china to null and null
  // 按照顺序传入参数值
  trabel2('china', 'usa');
  trabel2('china', 'usa', 'englang');
}