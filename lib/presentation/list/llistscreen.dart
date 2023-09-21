import 'package:basics/presentation/list/list_item.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> example = [
      "One",
      "two",
      "three",
      "four",
      "five",
      "six",
      "seven",
      "eight"
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Listview"),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: example.length,
            itemBuilder: (context, index) {
              return const ListItem(
                index: 0,
                title: "Hello world",
              );
            }));
  }
}
