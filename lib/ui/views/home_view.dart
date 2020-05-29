import 'package:flutter/material.dart';

import '../../responsive/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    color: Colors.blue,
                    height: 200,
                    child: ResponsiveBuilder(
                      builder: (context, sizingInformation) =>
                          Text(sizingInformation.toString()),
                    )),
                Text(sizingInformation.toString()),
              ],
            ),
          ),
        );
      },
    );
  }
}
