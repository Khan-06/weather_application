import'package:flutter/material.dart';

class MiddleTempDisplay extends StatelessWidget {
  const MiddleTempDisplay(this.temperature, {super.key});

  final int temperature;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 60,
              child: Text(temperature.toString(), style: TextStyle(fontSize: 30),),
            ),
            const Positioned(width: 190, height: 190,child: Icon(Icons.umbrella, size: 50,),)
          ],
        ),
      ],
    );
  }
}
