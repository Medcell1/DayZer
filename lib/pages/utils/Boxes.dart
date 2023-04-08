import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
  final dynamic one;
  final dynamic two;
  final dynamic three;
  final dynamic four;
  final dynamic five;
  const Boxes({Key? key, this.one, this.two, this.three, this.four, this.five})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10),
      child: Row(
        children: [
          Column(
            children: [
              Text(one),
              SizedBox(
                height: 40,
              ),
              Text(two),
            ],
          ),
          Spacer(),
          Container(
            height: 120,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF6353B6),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      three,
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      four,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Container(
                      margin: EdgeInsets.only(top: 30, right: 10),
                      child: Text(
                        five,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
