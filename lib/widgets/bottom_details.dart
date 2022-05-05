import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomDetails extends StatelessWidget {
  String temp12AM;
  String temp6AM;
  String temp1PM;
  String temp7PM;
  String condition;
  BottomDetails({
    Key? key,
    required this.temp12AM,
    required this.temp6AM,
    required this.temp1PM,
    required this.temp7PM,
    required this.condition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 20),
      width: MediaQuery.of(context).size.width,
      height: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: Column(
        children: [
          const Text(
            "Weather Today",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/sun.svg",
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "12:00 AM",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${temp12AM}\u00b0",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/sun.svg",
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "06:00 AM",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${temp6AM}\u00b0",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/sun.svg",
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "01:00 PM",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${temp1PM}\u00b0",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/sun.svg",
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "07:00 PM",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${temp7PM}\u00b0",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
