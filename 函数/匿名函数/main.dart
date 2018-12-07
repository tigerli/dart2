void main() {
  var listVr = ['cat', 'dog'];
  listVr.forEach((animal){
    print('animal is ${animal}');
  });
  //如果只有一行代码，可以使用 =>
  listVr.forEach((animal)=>print('animal is ${animal}'));
}