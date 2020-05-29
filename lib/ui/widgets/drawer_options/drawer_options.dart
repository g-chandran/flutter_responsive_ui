import 'package:flutter/material.dart';

import '../../../responsive/orientation_layout.dart';
import '../../../responsive/screen_type_layout.dart';
import 'drawer_option_mobile.dart';
import 'drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final IconData iconData;
  final String title;

  const DrawerOption({Key key, this.iconData, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        landscape: DrawerOptionsMobileLandscape(iconData: iconData),
        portrait: DrawerOptionsMobilePortrait(
          iconData: iconData,
          title: title,
        ),
      ),
      tablet: OrientationLayout(
        landscape: DrawerOptionsMobilePortrait(
          iconData: iconData,
          title: title,
        ),
        portrait: DrawerOptionsTabletPortrait(
          iconData: iconData,
          title: title,
        ),
      ),
    );
  }
}
