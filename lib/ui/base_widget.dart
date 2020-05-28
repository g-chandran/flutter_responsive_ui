import 'package:flutter/material.dart';
import 'package:flutter_responsive_test/utils/ui_utils.dart';

import 'sizing_information.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  BaseWidget({this.builder});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxConstraints) {
      var sizingInformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceScreenType: getDeviceScreenType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize:
            Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
      );
      print(sizingInformation.localWidgetSize);
      print(sizingInformation.toString());
      return builder(context, sizingInformation);
    });
  }
}
