import 'package:flutter/material.dart';
import 'package:flutter_responsive_test/ui/views/home_view_tablet.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import 'home_view_mobile.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: HomeMobileLandscape(),
      ),
      tablet: HomeViewTablet(),
    );
  }
}
