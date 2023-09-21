import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color iconcolor;
  const CustomButton({super.key, required this.onTap, required this.icon, required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue, Colors.pink]),
        ),
        width: 50,
        height: 50,
        child: InkWell(
          onTap: onTap(),
          splashColor: Colors.red,
          customBorder: CircleBorder(),
          child: Icon(icon, color: iconcolor,)
          ),
        ),
      );
  }
}
