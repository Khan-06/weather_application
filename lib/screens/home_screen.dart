import 'package:flutter/material.dart';
import '../widgets/middle_temp_display.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Weather')),
          backgroundColor: const Color(0xFF3A2E39),
        ),
        backgroundColor: const Color(0xFFADA8B6),
        body: Center(
          child: MiddleTempDisplay(47),
        ));
  }
}
