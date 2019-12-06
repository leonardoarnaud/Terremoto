import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:terramoto/home/model/earthquake.dart';
import 'package:terramoto/home/model/feature.dart';

import '../../Constants.dart';

class ItemEarthquake extends StatelessWidget {

  final Feature earthQuakeFeature;
  final GestureTapCallback onTap;

  const ItemEarthquake({Key key,
    this.earthQuakeFeature,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.greenAccent,
            child: Text(
              earthQuakeFeature.mag.toString(),
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          title: Text(
            DateFormat(
                Constants.time_date_format
            ).format(
                DateTime.fromMillisecondsSinceEpoch(
                    earthQuakeFeature.time
                )
            ),
            style: TextStyle(
                  color: Colors.amber
              ),
          ),
          subtitle: Text(
            earthQuakeFeature.place == null ? "Unknown" : earthQuakeFeature.place,
            style: TextStyle(
              color: Colors.grey
            ),
          ),
          onTap: onTap,
        )
      )
    );
  }
}
