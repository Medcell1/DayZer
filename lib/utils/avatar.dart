import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:inter_face/pages/fourth_page.dart';
import 'package:inter_face/pages/second_page.dart';
import 'package:inter_face/pages/utils/Fourth_Page.dart';

class GBottom extends StatefulWidget {
  const GBottom({Key? key}) : super(key: key);

  @override
  State<GBottom> createState() => _GBottomState();
}

class _GBottomState extends State<GBottom> {
  int pageIndex = 0;
  List pages = [
    SecondPage(),
    ThirdPage(),
    FourthPage(),
    Container(color: Colors.indigo),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: WillPopScope(
        onWillPop: () async {
          if (pageIndex > 0) {
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          bottomNavigationBar: Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: GNav(
              onTabChange: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              color: Colors.grey.shade400,
              activeColor: Colors.black,
              padding: EdgeInsets.all(16),
              gap: 8,
              tabs: const [
                GButton(
                  icon: Icons.home_filled,
                ),
                GButton(
                  icon: Icons.folder_copy,
                ),
                GButton(
                  icon: Icons.library_books,
                ),
                GButton(
                  icon: Icons.calendar_today,
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: pages[pageIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
