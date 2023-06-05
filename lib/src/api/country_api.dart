import 'package:dio/dio.dart';

const countryApi = CountryApi();

class CountryApi {
  const CountryApi();

  Future<String?> iso2ByIp() async {
    try {
      final res = await dio.post('https://freeipapi.com/api/json');
      return res.data['countryCode'] as String?;
    } catch (e) {
      return null;
    }
  }
}

Dio? _dioInstance;
Dio get dio {
  _dioInstance ??= Dio();
  return _dioInstance!;
}
