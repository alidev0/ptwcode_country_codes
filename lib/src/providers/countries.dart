import '../country.dart';
import 'raw_data.dart';

List<Country> getAllCountries() {
  List<Country> list = [];

  for (var line in rawData.split('\n')) {
    final data = line.split('/').first.trim().split('\t');
    if (data.length != 3) continue;

    final item = Country(name: data.first, call: data[1], iso2: data.last);
    list.add(item);
  }

  return list;
}
