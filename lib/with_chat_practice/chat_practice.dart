class Box<T> {
  final T value;

  Box(this.value);

  T first(List<T> item) => item.first;
}

class Pair<K, V> {
  final K key;
  final V value;

  Pair(this.key, this.value);
}

abstract class JsonSerializable {
Map<String, dynamic> toJson();
}

class ApiCache<T extends JsonSerializable> {
  final Map<String, Map<String, dynamic>> _store = {};

  void save(String key, T value) => _store[key] = value.toJson();
}