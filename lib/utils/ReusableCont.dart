import 'package:flutter/material.dart';

class ReusableCont extends StatelessWidget {
  final dynamic text1;
  final dynamic text2;
  final dynamic text3;
  final dynamic icon;
  final dynamic text4;
  const ReusableCont(
      {Key? key, this.text1, this.text2, this.text3, this.icon, this.text4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text1,
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                Text(
                  text2,
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                text3,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kanit'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Icon(icon),
                SizedBox(
                  width: 5,
                ),
                Text(text4),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
