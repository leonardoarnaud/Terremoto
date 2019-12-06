import 'feature.dart';

class Earthquake {
  final List<Feature> features;

  Earthquake({
    this.features,
  });

  factory Earthquake.fromJson(Map<String, dynamic> json){
    return Earthquake(
        features: (json['features'] as List).map((i) =>
            Feature.fromJson(i)
        ).toList()
    );
  }
}