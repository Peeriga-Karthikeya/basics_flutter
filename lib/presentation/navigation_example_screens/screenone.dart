import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("ScreenOne"),
      ),
      body: Center(
        child: TextButton(
            child: const Text("go to Two"),
            onPressed: () {
              Navigator.pushNamed(context, '/screen_two');
            }),
      ),
    );
  }
}
