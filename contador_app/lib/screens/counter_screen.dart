


import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10;

  @override
  Widget build(BuildContext context) {

    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clicks', style: fontSize30),
            Text('$counter', style: fontSize30,)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {});
            },
            child: const Icon( Icons.exposure_plus_1 ),
          ),
          FloatingActionButton(
            onPressed: () {
              counter = 0;
              setState(() {});
            },
            child: const Icon( Icons.exposure_outlined ),
          ),
          FloatingActionButton(
            onPressed: () {
              counter--;
              setState(() {});
            },
            child: const Icon( Icons.exposure_minus_1 ),
          ),
        ],
      )
    );
  }
}