class WeatherService {
  double temp;
  String condition;
  String location;
  String localtime;
  double temp12am;
  double temp6am;
  double temp1pm;
  double temp7pm;
  WeatherService({
    required this.temp,
    required this.condition,
    required this.location,
    required this.localtime,
    required this.temp12am,
    required this.temp6am,
    required this.temp1pm,
    required this.temp7pm,
  });
}
