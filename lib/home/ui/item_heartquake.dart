import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terramoto/home/model/earthquake.dart';
import 'package:terramoto/home/model/feature.dart';

class ItemEarthquake extends StatelessWidget {

  Feature earthQuakeFeature;

  ItemEarthquake({earthquakeFeature: Feature}){
    this.earthQuakeFeature = earthquakeFeature;
  }

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
              earthQuakeFeature.time.toString(),
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
        )
      )
    );
  }
}
