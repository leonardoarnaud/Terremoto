import 'package:flutter/material.dart';
import 'package:terramoto/home/home_controller.dart';
import 'package:terramoto/home/model/earthquake.dart';
import 'package:terramoto/home/ui/feature_alert_dialog.dart';
import 'package:terramoto/home/ui/item_heartquake.dart';

import '../../Strings.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {

  final homeController = HomeController();

  @override
  void initState() {
    super.initState();

    homeController.loadEarthquakes();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<Earthquake>(
          future: homeController.earthQuakes,
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: snapshot.data.features.length,
                  itemBuilder: (BuildContext context, int index){
                    final feature = snapshot.data.features[index];
                    return ItemEarthquake(
                      earthQuakeFeature: feature,
                      onTap: () => showDialog(
                          context: context,
                          builder: (context){
                            return FeatureAlertDialog(
                                mag: feature.mag.toString(),
                                place: feature.place
                            );
                          }
                      ),
                    );
                  }
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  _showDialog() {

  }


}