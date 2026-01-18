class StorageDataSource {
  const StorageDataSource();

  // storeData: keu -> value
Future<void> storeData<T> ({
    required String key,
  required T value,
}) async {
  // - value ni primitive/string/json formatga o'tkazish
  // - storage ga yozish (SharedPreferences/Hive/SecureStorage va h.k.)
  throw UnimplementedError();
 }

 // readData: key buyicha uqish
Future<T?> readData<T> ({
  required String key,
  required T Function(dynamic raw) decoder,
}) async {
  // - storage dan raw value olish
  // - agar topilmasa null
  // - topsa decoder(raw) qaytarish
  throw UnimplementedError();
 }

// updateData

Future<void> updateData<T> ({
  required String key,
  required T newValue
}) async {
  // - mavjud bo'lsa overwrite
  // - yo'q bo'lsa xohishga qarab yaratish (upsert)
  throw UnimplementedError();
 }

 // removeData
Future<void> removeData({
    required String key,
}) async {
  // - storage dan key'ni o'chirish
  throw UnimplementedError();
}


}