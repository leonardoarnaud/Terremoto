class Feature {
  final String id;
  final double mag;
  final String place;
  final int time;

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
      time: json['properties']['time']
    );
  }
}