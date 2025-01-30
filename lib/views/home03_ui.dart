import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_km_project/views/home04_ui.dart';

class Home03UI extends StatefulWidget {
  const Home03UI({super.key});

  @override
  State<Home03UI> createState() => _Home03UIState();
}

class _Home03UIState extends State<Home03UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'DTI App สวัสดี',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
          ),
          IconButton(
            onPressed: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.red[400],
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home04UI()),
                );
              },
              child: Text('Go to Home 04'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Southeast Asia University',
              ),
              accountEmail: Text(
                'www.sau.ac.th',
              ),
              decoration: BoxDecoration(color: Colors.purple),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2025/01/09/16/33/playing-cards-9322164_1280.jpg',
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/pic1.png',
                ),
                Icon(Icons.facebook, color: Color.fromARGB(255, 12, 121, 289)),
              ],
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.home,
              ),
              trailing: Icon(
                Icons.numbers,
              ),
              title: Text('หน้าหลัก'),
              subtitle: Text('Home'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.heart_broken_sharp,
                color: Colors.red,
              ),
              title: Text(
                'Favorite',
                style: TextStyle(fontFamily: 'Kanit', color: Colors.red),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.gps_fixed,
                color: Colors.black,
              ),
              title: Text(
                'ดูสถานที่',
                style: TextStyle(fontFamily: 'Kanit', color: Colors.red),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.earbuds,
                color: Colors.black,
              ),
              title: Text(
                'เชื่อมต่อ',
                style: TextStyle(fontFamily: 'Kanit', color: Colors.red),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text(
                'log out',
                style: TextStyle(fontFamily: 'Kanit', color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
