import 'package:flutter/material.dart';

class ChoiceChipDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChoiceChipDemoState();
  }
}

class _ChoiceChipDemoState extends State<ChoiceChipDemo> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('choice chip demo'),
      ),
      body: Center(
        child: ChoiceChip(
          label: Text('choice chip'),
          selected: _isSelected,
          onSelected: (isSelected) {
            setState(() {
              _isSelected = isSelected;
            });
          },
          selectedColor: Colors.blue.shade400,
        ),
      ),
    );
  }
}
