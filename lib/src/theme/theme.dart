import 'package:flutter/widgets.dart';

import 'my_colors.dart';
import 'my_text_styles.dart';

class Theme {
  Theme(this.color, this.text);

  MyColors color;
  MyTextStyles text;

  factory Theme.of(BuildContext context) {
    return Theme(
      myColors,
      MyTextStyles(myColors),
    );
  }
}
