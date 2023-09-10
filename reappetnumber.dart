main() {
  List<int> numbers = [2, 8, 5, 4, 4, 4, 10, 4, 22, 18, 4];
  var count = numbers.where((e) => e == 4).length;

  print("the count number 4 in List = $count");
}
