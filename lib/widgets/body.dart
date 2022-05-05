import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyWidget extends StatefulWidget {
  String condition;
  var temp;
  BodyWidget({Key? key, required this.condition, required this.temp})
      : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/sun.svg",
                  color: Colors.white,
                  height: 50,
                  width: 50,
                ),
                Text(
                  widget.condition,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              "${widget.temp}\u00b0",
              style: TextStyle(color: Colors.white, fontSize: 70),
            ),
          ),
        ],
      ),
    );
  }
}
