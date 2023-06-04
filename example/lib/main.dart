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
  Country? _country;

  void _onTap() async {
    _country = await showCountryDialog(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: ElevatedButton(
          onPressed: _onTap,
          child: Text(
            _country == null
                ? 'no country choosen'
                : 'Country: ${_country?.name} | Code: +${_country?.call}',
          ),
        ),
      ),
    );
  }
}
