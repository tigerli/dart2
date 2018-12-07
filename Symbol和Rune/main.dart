void main(){
  // Runes（符号文字）
  /**
   * Rune是Utf-32编码的字符串。它可以通过文字转换成符号表情或者代表特定的文字
   * 前面咱们了解到String类型是UTF-16编码，所以Rune是一种特殊的字符串
   * 有自己相对独有的声明方式。
   */
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
    '\u2665 \u{1f605} \u{1f60e} \u{1f47b} \u{1f596} \u{1f44d}'
  );
  print(new String.fromCharCodes(input));

  // Symbols（标志）
  /**
   * Symbols对象表示在Dart程序中声明的运算符和标识符。您可能永远不需要使用符号
   * 但他们对于按名称引用标识符的API非常好用
   * 因为缩小会更改标识符名称而不会更改标识符符号
   * 要获取标识符的符号，请使用符号文字，它只是 #后跟标识符
   */
  // #radix
  // #bar
}