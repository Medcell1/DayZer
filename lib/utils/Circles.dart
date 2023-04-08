import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  final dynamic day;
  final dynamic date;
  final dynamic firstColor;
  final dynamic secondColor;
  final dynamic thirdColor;
  const Circle(
      {Key? key,
      this.day,
      this.date,
      this.firstColor,
      this.secondColor,
      this.thirdColor})
      : super(key: key);

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 15, right: 0),
      height: 100,
      width: 70,
      decoration: BoxDecoration(
        color: widget.firstColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.day,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: widget.secondColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.date,
            style: TextStyle(
              color: widget.thirdColor,
            ),
          ),
        ],
      ),
    );
  }
}
