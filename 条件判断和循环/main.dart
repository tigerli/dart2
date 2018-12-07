void main() {
  // if...else
  var intVar = 30;
  if(intVar > 30){
    print('age 30 more');
  }else if(intVar < 20){
    print('age 20 less');
  }else{
    print('age is good');
  }

  // switch case
  var intVar2 = 30;
  switch (intVar2) {
    case 12:
      print('num 12');
      break;
    case 15:
      print('num 15');
      break;
    default:
      print('num ${intVar2}');
  }

  // for
  for(var i = 0; i < 10; i++){
    print('index ${i}');
  }
  // 列表访问
  var listVar = ['china', 'usa'];
  for(var l in listVar){
    print(l);
  }

  // while和do..while
  var intVar22 = 2;
  while(intVar22 > 0){
    print('intVar ${intVar22}');
    intVar22 --;
  };
  do{
    print('intVar ${intVar22}');
    intVar22 ++;
  }while(intVar22 < 2);

  // break和continue
  for(var i = 0; i < 10; i++){
    if(i % 2 == 0){
      continue;// 跳过本次循环
    }
    if(i == 5){
      break;
    }
    print('index ${i}');
  }

  // assert
  /**
   * assert语句在产品环境下是没有作用的
   * 只有在开发状态下才会有效果
   * flutter需要开启Debug模式；dart或者dartjs命令，需要添加参数--enable-assert
   */
  var intVar33 = 30;
  assert(intVar33 > 10);
  print('int ${intVar33}');
  assert(intVar33 < 20);
  print('int ${intVar33}');
}