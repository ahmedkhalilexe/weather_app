import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/widgets/body.dart';
import 'package:weather_app/widgets/bottom_details.dart';
import 'package:weather_app/widgets/heading.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WeatherService args =
        ModalRoute.of(context)!.settings.arguments as WeatherService;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Image.asset(
            "assets/sunny.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 60,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    HeaderWidget(
                      location: args.location,
                      localtime: args.localtime,
                    ),
                    SizedBox(height: 40),
                    BodyWidget(
                      condition: args.condition,
                      temp: args.temp.round(),
                    ),
                  ],
                ),
                BottomDetails(
                  temp12AM: args.temp12am.round().toString(),
                  temp6AM: args.temp6am.round().toString(),
                  temp1PM: args.temp1pm.round().toString(),
                  temp7PM: args.temp6am.round().toString(),
                  condition: args.condition,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
