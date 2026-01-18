// task 1
T add<T extends num>(T num1, T num2) => (num1 + num2) as T;

// task 2

T? firstElementReturn<T>(List<T> list) {
  if(list.isEmpty) return null;
    return list.first;
}

// task 3

T? elementAtOrNull<T>(List<T> list, int index) {
  if(index < 0 || index >= list.length) return null;
  return list[index];
}

// task 4

List<T> whereGeniric<T>(
List<T> list,
bool Function(T element) test
) {
  List<T> result = [];

  for(var element in list) {
    if(test(element)){
      result.add(element);

    }
  }
  return result;
}

// task 5
List<R> mapGeniric<T, R>(
    List<T> list,
    R Function(T element) transform
    ) {
  final result = <R>[];

  for(var element in list) {
      result.add(transform(element));
  }
  return result;
}

// task 6



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

  // task 3
  print('=======3======');
List<int> list3 = [23, 34 , 65];
 var result3 = elementAtOrNull(list3, 0);
 print(result3);

  // task 4
  print('=======4======');

  List<int> num = [1, 2, 3,4,5,6];

  var evenNum = whereGeniric(num,
      (n) => n.isEven);
  print(evenNum);

  print('======= 5 =======');

  final name = ['Vali', 'Ali', 'Abbos'];

  var mapNameLength = mapGeniric(name,
      (e) => e.length);
print(mapNameLength);


print('======= 6 ======');
}