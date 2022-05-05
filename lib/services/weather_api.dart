import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WeatherApi {
  var temp;
  var condition;
  var localtime;
  var location;
  var temp12AM;
  var temp6AM;
  var temp1PM;
  var temp7PM;
  var icon;
  Future<void> getTemp() async {
    String url =
        "http://api.weatherapi.com/v1/forecast.json?key=cd161719144e47c3818173741220305 &q=$location&days=5&aqi=yes&alerts=no";
    Response response = await get(Uri.parse(url));
    Map _dataset = jsonDecode(response.body);
    temp = _dataset["current"]["temp_c"];
  }

  Future<void> getCondition() async {
    String url =
        "http://api.weatherapi.com/v1/forecast.json?key=cd161719144e47c3818173741220305 &q=$location&days=5&aqi=yes&alerts=no";
    Response response = await get(Uri.parse(url));
    Map _dataset = jsonDecode(response.body);
    condition = _dataset["current"]["condition"]["text"].toString();
  }

  Future<void> getdata() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    var lat = position.latitude;
    var lon = position.longitude;
    String url =
        "http://api.weatherapi.com/v1/forecast.json?key=cd161719144e47c3818173741220305 &q=$lat,$lon&days=1&aqi=yes&alerts=no";
    Response response = await get(Uri.parse(url));
    Map _dataset = jsonDecode(response.body);
    temp = _dataset["current"]["temp_c"];
    localtime = _dataset["location"]["localtime"];
    condition = _dataset["current"]["condition"]["text"];
    location = _dataset["location"]["name"];
    temp12AM = _dataset["forecast"]["forecastday"][0]["hour"][0]["temp_c"];
    temp6AM = _dataset["forecast"]["forecastday"][0]["hour"][6]["temp_c"];
    temp1PM = _dataset["forecast"]["forecastday"][0]["hour"][13]["temp_c"];
    temp7PM = _dataset["forecast"]["forecastday"][0]["hour"][19]["temp_c"];
  }
}
