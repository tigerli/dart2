void main() {
  // 位运算符
  /**
   * &（按位与）
   * |（按位或）
   * ^（按位异或）
   * ~（按位取反）
   * <<（按位左移）
   * >>（按位右移）
   */
  final value = 0x22;
  final bitmask = 0x0f;
  print((value & bitmask));
  print((value & bitmask) == 0x02);// true, AND

  print((value | bitmask));
  print((value | bitmask) == 0x20);// true, AND NOT
  print((value ^ bitmask) == 0x2d);// true, OR
  print((value << 4) == 0x220);// true, Shift left
  print((value >> 4) == 0x02);// true, Shift right

  
}