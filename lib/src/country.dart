/// an object that represent a country
class Country {
  Country({required this.name, required this.call, required this.iso2});

  final String name;
  final String call;
  final String iso2;

  @override
  String toString() {
    return 'iso2: $iso2, call: $call, name: $name';
  }
}
