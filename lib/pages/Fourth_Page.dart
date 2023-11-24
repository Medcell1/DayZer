import 'package:flutter/material.dart';

import '../utils/Boxes.dart';
import '../utils/Circles.dart';

enum Take {
  t,
  d,
  e,
  f,
}

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  Take? selected;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFDBE8F5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                      ),
                      child: Icon(Icons.arrow_back),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar1.png'),
                      radius: 30,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      '←  Mar',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'April',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'May  →',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      selected = Take.t;
                      setState(() {});
                    },
                    child: Circle(
                      day: '12',
                      date: 'Wed',
                      firstColor:
                          selected == Take.t ? Color(0xFF6353B6) : Colors.white,
                      secondColor: selected == Take.t
                          ? Colors.white
                          : Colors.blueGrey.shade500,
                      thirdColor: selected == Take.t
                          ? Colors.white
                          : Colors.blueGrey.shade500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selected = Take.d;
                      setState(() {});
                    },
                    child: Circle(
                      day: '13',
                      date: 'Thurs',
                      firstColor:
                          selected == Take.d ? Color(0xFF6353B6) : Colors.white,
                      secondColor: selected == Take.d
                          ? Colors.white
                          : Colors.blueGrey.shade500,
                      thirdColor: selected == Take.d
                          ? Colors.white
                          : Colors.blueGrey.shade500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selected = Take.e;
                      setState(() {});
                    },
                    child: Circle(
                      day: '12',
                      date: 'Fri',
                      firstColor:
                          selected == Take.e ? Color(0xFF6353B6) : Colors.white,
                      secondColor: selected == Take.e
                          ? Colors.white
                          : Colors.blueGrey.shade500,
                      thirdColor: selected == Take.e
                          ? Colors.white
                          : Colors.blueGrey.shade500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selected = Take.f;
                      setState(() {});
                    },
                    child: Circle(
                      day: '12',
                      date: 'Sat',
                      firstColor:
                          selected == Take.f ? Color(0xFF6353B6) : Colors.white,
                      secondColor: selected == Take.f
                          ? Colors.white
                          : Colors.blueGrey.shade500,
                      thirdColor: selected == Take.f
                          ? Colors.white
                          : Colors.blueGrey.shade500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Ongoing',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kanit',
                    ),
                  ),
                ),
              ),
              Column(
                children: const [
                  Boxes(
                    one: '9 AM',
                    two: '10 AM',
                    three: 'Mobile App Design',
                    four: 'Mike and Anta',
                    five: '9.00 AM-10.00AM',
                  ),
                  Boxes(
                    one: '10 AM',
                    two: '11 AM',
                    three: 'Software Testing',
                    four: 'Mike and Daniel',
                    five: '9.00 AM-10.00AM',
                  ),
                  Boxes(
                    one: '11 AM',
                    two: '12 AM',
                    three: 'Web Development',
                    four: 'Anta and David',
                    five: '9.00 AM-10.00AM',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
