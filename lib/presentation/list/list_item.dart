import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final int index;
  final String title;

  const ListItem({super.key, required this.title, required this.index});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: ListTile(
        leading: Checkbox(
          value: _isSelected,
          onChanged: (value) {
            setState(() {
              _isSelected = value ?? false;
            });
          },
        ),
        title: Text(widget.title),
        subtitle: Text("Widget number ${widget.index}"),
      ),
    );
  }
}
