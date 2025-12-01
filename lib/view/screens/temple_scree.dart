import 'package:flutter/material.dart';

class TempleScree extends StatefulWidget {
  const TempleScree({super.key});

  @override
  State<TempleScree> createState() => _TempleScreeState();
}

class _TempleScreeState extends State<TempleScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Temple",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
