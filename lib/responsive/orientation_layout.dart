import 'package:flutter/material.dart';

class OrientationLayout extends StatelessWidget {
  final Widget landscape, portrait;

  const OrientationLayout({Key key, this.landscape, this.portrait})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape)
      return landscape ?? portrait;
    return portrait;
  }
}
