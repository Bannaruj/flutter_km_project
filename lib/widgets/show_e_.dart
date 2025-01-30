import 'package:flutter/material.dart';

class ShowE extends StatefulWidget {
  const ShowE({super.key});

  @override
  State<ShowE> createState() => _ShowEState();
}

class _ShowEState extends State<ShowE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.brightness_medium,
          size: MediaQuery.of(context).size.width * 0.5,
          color: const Color.fromARGB(255, 10, 113, 196),
        ),
      ),
    );
  }
}
