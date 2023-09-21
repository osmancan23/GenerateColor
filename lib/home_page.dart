import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _generateColor(),
      child: Scaffold(
        backgroundColor: color,
        body: const Center(
          child: Text(
            'Hello there',
          ),
        ),
      ),
    );
  }

  void _generateColor() {
    int randomNumber = (math.Random().nextDouble() * 0xFFFFFF).toInt();
    color = Color(randomNumber).withOpacity(1.0);
    setState(() {});
  }
}
