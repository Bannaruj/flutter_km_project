import 'package:flutter/material.dart';

class ShowCUI extends StatefulWidget {
  const ShowCUI({super.key});

  @override
  State<ShowCUI> createState() => _ShowCUIState();
}

class _ShowCUIState extends State<ShowCUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.icecream,
          size: MediaQuery.of(context).size.width * 0.5,
          color: const Color.fromARGB(255, 11, 204, 53),
        ),
      ),
    );
  }
}
