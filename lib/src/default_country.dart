import '../ptwcode_country_codes.dart';
import 'api/country_api.dart';
import 'providers/countries.dart';

/// for getting the country automatically
Future<Country?> getDefaultCountry() async {
  final iso2 = (await countryApi.iso2ByIp())?.toLowerCase();
  return getAllCountries().where((el) => el.iso2 == iso2).firstOrNull;
}
