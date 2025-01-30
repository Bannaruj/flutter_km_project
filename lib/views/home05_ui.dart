import 'package:flutter/material.dart';
import 'package:flutter_km_project/widgets/show_a_ui.dart';
import 'package:flutter_km_project/widgets/show_b_ui.dart';
import 'package:flutter_km_project/widgets/show_c_ui.dart';
import 'package:flutter_km_project/widgets/show_d_ui.dart';
import 'package:flutter_km_project/widgets/show_e_.dart';

class Home05UI extends StatefulWidget {
  const Home05UI({super.key});

  @override
  State<Home05UI> createState() => _Home05UIState();
}

class _Home05UIState extends State<Home05UI> {
  int selectedIndex = 2;

  List showUI = [
    ShowAUI(),
    ShowBUI(),
    ShowCUI(),
    ShowDUI(),
    ShowE(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'KM BottomNavBar 01',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            //คำสั่งใดก็ตามที่มีผลต่อหน้าจอให้เขียนภายใต้setstate
            setState(() {
              selectedIndex = value;
            });
          },
          backgroundColor: Colors.pink[100],
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.pink,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.facebook,
                ),
                label: 'Facebook'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.ice_skating,
                ),
                label: 'iceskate'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.icecream,
                ),
                label: 'icecream'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dangerous,
                ),
                label: 'close'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.brightness_medium,
                ),
                label: 'sun'),
          ]),
      body: showUI[selectedIndex],
    );
  }
}
