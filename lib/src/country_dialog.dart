import 'package:flutter/widgets.dart';

import 'country.dart';
import 'providers/countries.dart';
import 'theme/app_colors.dart';
import 'theme/theme.dart';
import 'ui/gap.dart';
import 'ui/gap_bottom.dart';
import 'ui/input.dart';
import 'ui/my_div.dart';
import 'ui/my_paddings.dart';
import 'ui/show_my_dialog.dart';

/// show list of countries on a dialog
Future<Country?> showCountryDialog(BuildContext context) async {
  return await showMyDialog<Country>(
    context: context,
    builder: (context) => _Content(),
  );
}

class _Content extends StatefulWidget {
  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  final _ctrl = TextEditingController();
  List<Country> _list = [];
  late final List<Country> _fullList;

  @override
  void initState() {
    _fullList = getAllCountries();
    _list = _fullList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);

    Widget item(Country country) {
      Widget curr = Image.asset(
        'assets/${country.iso2.toLowerCase()}.png',
        width: 32,
        height: 32,
        package: 'ptwcode_country_codes',
        errorBuilder: (context, error, stackTrace) => const Gap(0),
      );

      curr = Row(
        children: [
          const Gap(16),
          SizedBox(width: 64, height: 48, child: curr),
          SizedBox(
            width: 64,
            child: Text(country.call, style: t.text.def400s15Black),
          ),
          Expanded(child: Text(country.name, style: t.text.def400s15Black)),
          const Gap(16),
        ],
      );

      curr = ColoredBox(color: transparentColor, child: curr);

      return GestureDetector(
        child: curr,
        onTap: () => Navigator.pop(context, country),
      );
    }

    Widget cancel = Text('Cancel', style: t.text.def400s16White);
    cancel = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [cancel],
    );
    cancel = Container(
      height: 48,
      decoration: BoxDecoration(
        color: t.color.blue,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: cancel,
    );
    cancel = AllPadding(cancel, 8);

    cancel =
        GestureDetector(child: cancel, onTap: () => Navigator.pop(context));

    Widget current = Input(
      ctrl: _ctrl,
      label: 'Search',
      onChange: (p0) {
        _list = _fullList
            .where((el) => el.name.toLowerCase().contains(p0.toLowerCase()))
            .toList();
        setState(() {});
      },
    );

    current = AllPadding(current, 8);

    current = Column(
      children: [
        current,
        Expanded(
          child: ListView.separated(
            itemCount: _list.length,
            separatorBuilder: (context, index) => const MyDiv.greyLight(),
            itemBuilder: (context, i) => item(_list[i]),
          ),
        ),
        cancel,
      ],
    );

    current = Container(
      decoration: BoxDecoration(
        color: t.color.white,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: current,
    );

    current = Column(
      children: [
        Expanded(child: current),
        const GapBottom(min: 0),
      ],
    );

    current = AllPadding(current, 32);
    current = Center(child: current);

    return current;
  }
}
