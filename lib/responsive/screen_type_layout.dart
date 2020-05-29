import 'package:flutter/material.dart';
import 'package:flutter_responsive_test/enums/device_screen_type.dart';
import 'package:flutter_responsive_test/responsive/responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile, desktop, tablet;
  ScreenTypeLayout({this.mobile, this.desktop, this.tablet});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop) {
          if (desktop != null) return desktop;
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.Tablet) {
          if (tablet != null) return tablet;
        }
        return mobile;
      },
    );
  }
}
