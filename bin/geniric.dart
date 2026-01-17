T add<T extends num>(T num1, T num2) => (num1 + num2) as T;

void main() {
  double n1 = 12.7;
  int n2 = 13;
  var result = add(n1, n2);

  print(result);
}