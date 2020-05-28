import 'package:flutter/material.dart';

import '../base_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    color: Colors.blue,
                    height: 200,
                    child: BaseWidget(
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
