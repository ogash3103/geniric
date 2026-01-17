// task 1
T add<T extends num>(T num1, T num2) => (num1 + num2) as T;

// task 2

T? firstElementReturn<T>(List<T> list) {
  if(list.isEmpty) return null;
    return list.first;
}

void main() {
  // task 1
  double n1 = 12.7;
  int n2 = 13;
  var result = add(n1, n2);
  print(result);

  // task 2

  List list = [12, "String", 14.3];
  var result2 = firstElementReturn(list);
  print(result2);

}