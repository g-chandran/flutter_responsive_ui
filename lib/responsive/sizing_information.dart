import 'package:flutter/material.dart';

import '../enums/device_screen_type.dart';

class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {this.deviceScreenType, this.screenSize, this.localWidgetSize});

  @override
  String toString() {
    return 'Device Screen type: $deviceScreenType, Screen size: $screenSize, Local Widget Size: $localWidgetSize';
  }
}
