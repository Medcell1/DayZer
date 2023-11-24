import 'package:flutter/material.dart';

class NewRow extends StatelessWidget {
  final dynamic one;
  final dynamic two;
  final dynamic three;

  const NewRow({Key? key, this.one, this.two, this.three}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFE7AB),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(top: 20),
      height: 90,
      width: 150,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 15),
              child: Text(
                one,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Kanit'),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  two,
                  size: 15,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                three,
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
