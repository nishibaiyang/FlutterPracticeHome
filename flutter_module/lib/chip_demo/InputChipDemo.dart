import 'package:flutter/material.dart';

class InputChipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('input chip'),
      ),
      body: Center(
        child: InputChip(
          label: Text('Aaron Burr'),
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: Text('AB'),
          ),
          onPressed: () {
            print('I am the one thing in life');
          },
          onDeleted: () {},
        ),
      ),
    );
  }
}
