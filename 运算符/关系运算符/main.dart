void main(){
  //关系运算符有：
  /**
   * ==（等于）、!=（不等于）、>（大于）、<（小于）、>=（大于等于）和<=（小于等于）
   */
  print(1 == 1);// true
  print(1 != 1);// false
  print(2 > 1);// true
  print(2 < 1);// false
  print(2 >= 1);// false
  print(2 <= 1);// false
  // == 和 != 不仅仅可以做数值的比较，也可以做对象的比较
  // 而且==和!= 都可以进行运算符的重写
  print(null == null);// true
  print(null != null);// false
  print('1' == '1');// true
}