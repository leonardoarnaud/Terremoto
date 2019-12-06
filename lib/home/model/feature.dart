import 'package:intl/intl.dart';
import 'package:terramoto/Constants.dart';

class Feature {
  final String id;
  final double mag;
  final String place;
  final String time;

  Feature({
    this.id,
    this.mag,
    this.place,
    this.time
  });

  factory Feature.fromJson(Map<String, dynamic> json){
    return Feature(
      id: json['properties']['id'],
      mag: double.parse(json['properties']['mag'].toString()),
      place: json['properties']['place'],
      time: DateFormat(
          Constants.time_date_format
      ).format(
          DateTime.fromMillisecondsSinceEpoch(
            json['properties']['time']
          )
      ),
    );
  }
}