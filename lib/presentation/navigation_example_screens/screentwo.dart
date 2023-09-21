import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenTwo'),
        centerTitle: true,
      ),
      body: Center(
          child: TextButton(
        child: const Text("go home"),
        onPressed: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        },
      )),
    );
  }
}
