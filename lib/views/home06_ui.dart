import 'package:flutter/material.dart';
import 'package:flutter_km_project/widgets/show_a_ui.dart';
import 'package:flutter_km_project/widgets/show_b_ui.dart';
import 'package:flutter_km_project/widgets/show_c_ui.dart';
import 'package:flutter_km_project/widgets/show_d_ui.dart';
import 'package:flutter_km_project/widgets/show_e_.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home06UI extends StatefulWidget {
  const Home06UI({super.key});

  @override
  State<Home06UI> createState() => _Home06UIState();
}

class _Home06UIState extends State<Home06UI> {
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
        backgroundColor: Colors.blueAccent,
        title: Text(
          'KM BottomNavBar 01',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: SalomonBottomBar(
        onTap: (value) {
          //คำสั่งใดก็ตามที่มีผลต่อหน้าจอให้เขียนภายใต้setstate
          setState(() {
            selectedIndex = value;
          });
        },
        backgroundColor: Colors.blue[100],
        currentIndex: selectedIndex,
        items: [
          SalomonBottomBarItem(
              icon: Icon(
                Icons.facebook,
              ),
              title: Text('facebook')),
          SalomonBottomBarItem(
              icon: Icon(
                Icons.ice_skating,
              ),
              title: Text('iceskate')),
          SalomonBottomBarItem(
              icon: Icon(
                Icons.icecream,
              ),
              title: Text('icecreame')),
          SalomonBottomBarItem(
              icon: Icon(
                Icons.dangerous,
              ),
              title: Text('dangerous')),
          SalomonBottomBarItem(
              icon: Icon(
                Icons.brightness_medium,
              ),
              title: Text('brightness_medium')),
        ],
      ),
      body: showUI[selectedIndex],
    );
  }
}
