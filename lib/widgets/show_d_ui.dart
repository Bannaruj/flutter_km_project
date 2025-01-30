import 'package:flutter/material.dart';

class ShowDUI extends StatefulWidget {
  const ShowDUI({super.key});

  @override
  State<ShowDUI> createState() => _ShowDUIState();
}

class _ShowDUIState extends State<ShowDUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.dangerous,
          size: MediaQuery.of(context).size.width * 0.5,
          color: const Color.fromARGB(255, 226, 234, 6),
        ),
      ),
    );
  }
}
