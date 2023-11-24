import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/New_Row.dart';
import '../utils/New_Widget.dart';

int percent = 70;

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD1EDBF),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                NewWidget(
                  cons: Icons.close,
                ),
                NewWidget(
                  cons: Icons.password,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom: 85),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  // height: 1000,
                  width: double.maxFinite,
                  child: Container(
                    margin: EdgeInsets.only(top: 30, left: 30),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Messaging ID',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                fontFamily: 'Kanit'),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Your daily plan',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '$percent%',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        SliderTheme(
                          data: SliderThemeData(
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 1),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 0, right: 20),
                            child: Slider(
                                activeColor: Colors.black,
                                inactiveColor: Colors.grey.shade500,
                                max: 100,
                                min: 1,
                                value: percent.toDouble(),
                                onChanged: (double value) {
                                  setState(() {
                                    percent = value.round();
                                  });
                                }),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(),
                            child: Text(
                              '4 of 6 completed',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Row(
                          children: const [
                            NewRow(
                              one: '17',
                              two: Icons.task_sharp,
                              three: 'Task Finished',
                            ),
                            Spacer(),
                            NewRow(
                              one: '3,2',
                              two: Icons.access_time_filled,
                              three: 'Task Finished',
                            ),
                            Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              'Overview',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Kanit',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              'Messaging ID framework development for the\nmarketing branch and the publicity bureau and\nimplemented a draft on the framework.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              'Members Connected',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Kanit',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/people1.jpg'),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/people2.jpg'),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/people3.jpg'),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/people4.jpg'),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                              child: Text(
                                '+',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ),
                            Spacer(),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
