import 'package:flutter/material.dart';

class ShowBUI extends StatefulWidget {
  const ShowBUI({super.key});

  @override
  State<ShowBUI> createState() => _ShowBUIState();
}

class _ShowBUIState extends State<ShowBUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.ice_skating,
          size: MediaQuery.of(context).size.width * 0.5,
          color: const Color.fromARGB(255, 224, 173, 4),
        ),
      ),
    );
  }
}
