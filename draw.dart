import 'dart:io';

main() {
  draw(7);
}

void draw(int n) {
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}
