import 'dart:convert';
import 'package:terramoto/home/model/earthquake.dart';
import 'package:terramoto/Constants.dart';
import 'package:http/http.dart' as http;

class EarthquakeApi{

  Future<Earthquake> fetchEarthquake() async {
    final response = await http.get(Constants.API_URL);

    if (response.statusCode == 200) {
      return Earthquake.fromJson(
          json.decode(response.body)
      );
    } else {
      throw Exception('Erro ao ler a API');
    }
  }

}
