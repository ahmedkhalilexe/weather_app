import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_api.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  WeatherApi instance = WeatherApi();

  Future<void> setUpWeatherApi() async {
    //await instance.getTemp();
    //await instance.getCondition();
    await instance.getdata();
    Navigator.pushNamed(context, "/home",
        arguments: WeatherService(
          temp: instance.temp,
          condition: instance.condition,
          location: instance.location,
          localtime: instance.localtime,
          temp12am: instance.temp12AM,
          temp6am: instance.temp6AM,
          temp1pm: instance.temp1PM,
          temp7pm: instance.temp7PM,
        ));
  }

  @override
  void initState() {
    super.initState();
    setUpWeatherApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: SpinKitSpinningLines(
          color: Colors.black,
          size: 50.0,
        ),
      ),
    );
  }
}
