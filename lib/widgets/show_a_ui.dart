import 'package:flutter/material.dart';

class ShowAUI extends StatefulWidget {
  const ShowAUI({super.key});

  @override
  State<ShowAUI> createState() => _ShowAUIState();
}

class _ShowAUIState extends State<ShowAUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.facebook,
          size: MediaQuery.of(context).size.width * 0.5,
          color: const Color.fromARGB(255, 10, 113, 196),
        ),
      ),
    );
  }
}
