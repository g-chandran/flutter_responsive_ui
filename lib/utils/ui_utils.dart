import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_test/enums/device_screen_type.dart';

DeviceScreenType getDeviceScreenType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;
  double deviceWidth = 0;

  deviceWidth = orientation == Orientation.landscape
      ? mediaQuery.size.height
      : mediaQuery.size.width;

  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  } else if (deviceWidth > 600 && deviceWidth <= 950) {
    return DeviceScreenType.Tablet;
  }
  return DeviceScreenType.Mobile;
}
