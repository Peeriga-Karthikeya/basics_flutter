import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
          child: Text(
        counter.toString(),
        style: TextStyle(fontSize: 70, fontWeight: FontWeight.w900, color: counter>10?Colors.blue:Colors.blueGrey),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              heroTag: "btn1",
              backgroundColor: Colors.red,
              child: Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              heroTag: "btn2",
              backgroundColor: Colors.green,
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
