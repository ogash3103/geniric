class MultipartFileData {
  final String fieldName; // masalan: "avatar"
  final String filePath;  // lokal path
  final String? filename; // optional
  final String? contentType; // "image/jpeg", "application/pdf" ...

  MultipartFileData({
    required this.fieldName,
    required this.filePath,
    this.filename,
    this.contentType,
  });
}

class NetworkDataSource {
  final String baseUrl;

  NetworkDataSource({required this.baseUrl});

  Map<String, String> defaultHeaders({String? token}) => {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    if(token != null) 'Authorization': 'Bearer $token',
  };


  // GET
Future<T> get<T> ({
  required String path,
  Map<String, dynamic>? query,
  Map<String, String>? headers,
  String? token,
  required T Function(dynamic data) decoder,
}) async {
  // TODO: real request:
  // - build Uri: baseUrl + path + query
  // - send GET
  // - check statusCode
  // - parse json
  // - return decoder(json)
  throw UnimplementedError();
}

// POST

Future<T> post<T> ({
  required String path,
  Map<String, dynamic>? query,
  Object? body,
  Map<String, String>? headers,
  String? token,
  required T Function(dynamic data) decoder,
}) async {
  // TODO: send POST with JSON body
  throw UnimplementedError();
}

// PUT
Future<T> put<T>({
  required String path,
  Map<String, dynamic>? query,
  Object? body,
  Map<String, String>? headers,
  String? token,
  required T Function(dynamic data) decoder,
}) async {
  // TODO: send PUT (replace resource)
  throw UnimplementedError();
}

// DELETE
  Future<T> delete<T>({
    required String path,
    Map<String, dynamic>? query,
    Object? body,
    Map<String, String>? headers,
    String? token,
    required T Function(dynamic data) decoder,
  }) async {
    // TODO: send DELETE
    throw UnimplementedError();
  }

// PATCH
  Future<T> patch<T>({
    required String path,
    Map<String, dynamic>? query,
    Object? body,
    Map<String, String>? headers,
    String? token,
    required T Function(dynamic data) decoder,
  }) async {
    // TODO: send PATCH (partial update)
    throw UnimplementedError();
  }

  Future<T> multipart<T>({
    required String path,
    Map<String, dynamic>? query,
    Map<String, String>? fields, // text fieldlar
    List<MultipartFileData>? files, // fayllar
    Map<String, String>? headers,
    String? token,
    required T Function(dynamic data) decoder,
  }) async {
    // TODO:
    // - create multipart/form-data request
    // - add fields
    // - add files
    // - send
    // - parse response
    throw UnimplementedError();
  }
}


