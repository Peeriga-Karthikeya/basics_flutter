import 'package:basics/application/theme_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonExamples extends StatefulWidget {
  const ButtonExamples({super.key});

  @override
  State<ButtonExamples> createState() => _ButtonExamplesState();
}

class _ButtonExamplesState extends State<ButtonExamples> {
  bool switch_state = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.blue)),
            onLongPress: () {
              debugPrint("Long pressed");
            },
            onPressed: () {
              debugPrint("Pressed");
            },
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              height: 60,
              width: 60,
            )),
        IconButton(
          onPressed: () {
            debugPrint("Icon button pressed");
          },
          icon: const Icon(Icons.play_arrow),
        ),
        Switch(
            value: switch_state,
            onChanged: (value) {
              setState(() {
                switch_state = value;
              });
            }),
        FloatingActionButton(
          onPressed: () {
            Provider.of<ThemeService>(context, listen: false).toggleMode();
          },
          child: const Icon(Icons.mode),
        )
      ],
    );
  }
}
