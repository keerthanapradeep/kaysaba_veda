import 'package:flutter/material.dart';

class HiranyaSreen extends StatefulWidget {
  const HiranyaSreen({super.key});

  @override
  State<HiranyaSreen> createState() => _HiranyaSreenState();
}

class _HiranyaSreenState extends State<HiranyaSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hiranya",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
