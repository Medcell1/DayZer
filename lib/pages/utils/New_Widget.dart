import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  final dynamic cons;
  const NewWidget({Key? key, this.cons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 30, right: 20),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade500,
          ),
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFD1EDBF)),
      child: Icon(
        cons,
        color: Colors.black,
      ),
    );
  }
}
