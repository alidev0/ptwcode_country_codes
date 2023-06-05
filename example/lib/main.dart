import 'package:flutter/material.dart';
import 'package:ptwcode_country_codes/ptwcode_country_codes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Country? _dialogCountry;
  Country? _defaultCountry;

  void _onTapDialog() async {
    _dialogCountry = await showCountryDialog(context);
    setState(() {});
  }

  void _onTapDefault() async {
    _defaultCountry = await getDefaultCountry();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(child: Text('Countries Dialog', style: style)),
          Center(
            child: ElevatedButton(
              onPressed: _onTapDialog,
              child: Text(
                _dialogCountry == null
                    ? 'no country choosen'
                    : 'Country: ${_dialogCountry?.name} | Code: +${_dialogCountry?.call}',
              ),
            ),
          ),
          const Center(child: Text('Default Country', style: style)),
          Center(
            child: ElevatedButton(
              onPressed: _onTapDefault,
              child: Text(
                _defaultCountry == null
                    ? 'no country choosen'
                    : 'Country: ${_defaultCountry?.name} | Code: +${_defaultCountry?.call}',
              ),
            ),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
