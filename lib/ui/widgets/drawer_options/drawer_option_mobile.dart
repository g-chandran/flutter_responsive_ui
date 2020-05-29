import 'package:flutter/material.dart';

class DrawerOptionsMobilePortrait extends StatelessWidget {
  final String title;
  final IconData iconData;

  const DrawerOptionsMobilePortrait({Key key, this.title, this.iconData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(left: 25),
      child: Row(
        children: <Widget>[
          Icon(iconData),
          SizedBox(width: 25),
          Text(title, style: TextStyle(fontSize: 21)),
        ],
      ),
    );
  }
}

class DrawerOptionsMobileLandscape extends StatelessWidget {
  final IconData iconData;

  const DrawerOptionsMobileLandscape({Key key, this.iconData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Icon(iconData),
    );
  }
}
