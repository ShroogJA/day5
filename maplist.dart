main() {
  List<int> numbers = [2, 5, 10, 30, 50, 600];
  List<int> num = numbers.map((e) => e * 2).toList();
  print(num);
}
