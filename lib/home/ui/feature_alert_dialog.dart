import 'package:flutter/material.dart';

import '../../Strings.dart';

class FeatureAlertDialog extends StatelessWidget {
  String mag;
  String place;

  FeatureAlertDialog({this.mag, this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text(Strings.app_title),
        content: Text("$mag - $place"),
        actions: <Widget>[
          FlatButton(
            child: Text(Strings.ok),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
    );
  }
}
