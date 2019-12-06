import 'dart:convert';

import 'package:terramoto/home/model/earthquake.dart';
import 'package:terramoto/home/earthquake_api.dart';

class HomeController{

  final earthquakeApi = EarthquakeApi();

  Future<Earthquake> earthQuakes;

  loadEarthquakes(){
    earthQuakes = earthquakeApi.fetchEarthquake();
  }

}