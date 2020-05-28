import 'package:flutter/material.dart';

import '../enums/device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {this.orientation,
      this.deviceScreenType,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString() {
    return 'Orientation: $orientation, Device Screen type: $deviceScreenType, Screen size: $screenSize, Local Widget Size: $localWidgetSize';
  }
}
