// 闭包是一个函数对象，可以读取其他作用域内的变量使用
// 使用匿名函数可以轻松实现一个闭包
Function makeAdder(num){
  return (addNum){
    return addNum + num;
  };
}
Function test(num){
  return (){
    return num;
  };
}
void main() {
  var add5 = makeAdder(5);
  var add10 = makeAdder(10);

  var test1 = test(1);
  print(test1());
  print(add5(1));
}