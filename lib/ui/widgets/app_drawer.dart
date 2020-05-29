import 'package:flutter/material.dart';
import 'package:flutter_responsive_test/ui/widgets/drawer_options/drawer_options.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import 'app_drawer_mobile.dart';
import 'app_drawer_tablet.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landscape: AppDrawerTabletLandscape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(
        iconData: Icons.image,
        title: 'Images',
      ),
      DrawerOption(
        iconData: Icons.photo_filter,
        title: 'Reports',
      ),
      DrawerOption(
        iconData: Icons.message,
        title: 'Incidents',
      ),
      DrawerOption(
        iconData: Icons.settings,
        title: 'Settings',
      ),
    ];
  }
}
