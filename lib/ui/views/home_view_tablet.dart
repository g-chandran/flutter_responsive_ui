import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class HomeViewTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var children = [
      Expanded(
        child: Container(),
      ),
      AppDrawer()
    ];
    return SafeArea(
      child: Scaffold(
        body: orientation == Orientation.portrait
            ? Column(
                children: children,
              )
            : Row(
                children: children.reversed.toList(),
              ),
      ),
    );
  }
}
