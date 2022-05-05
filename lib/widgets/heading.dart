import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  String location;
  String localtime;
  HeaderWidget({
    Key? key,
    required this.location,
    required this.localtime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              Text(
                location,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              localtime,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
