import 'package:basics/presentation/counter/counter_screen.dart';
import 'package:basics/presentation/list/llistscreen.dart';
import 'package:basics/presentation/theme_animation/theme_animation_scree.dart';
import 'package:basics/presentation/widget_examples_screen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentindex,
        children: const [
          WidgetExampleScreen(),
          CounterScreen(),
          ListScreen(),
          ThemeAnimation()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.amber,
          selectedItemColor: Colors.blue,
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
          currentIndex: _currentindex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "example"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "counter"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
            BottomNavigationBarItem(
                icon: Icon(Icons.color_lens), label: "theme")
          ]),
    );
  }
}
