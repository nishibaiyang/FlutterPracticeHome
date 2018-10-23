import 'package:flutter/material.dart';

class FilterChipDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FilterChipDemoState();
  }
}

class _FilterChipDemoState extends State<FilterChipDemo> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fillter chip demo'),
      ),
      body: Center(
        child: FilterChip(
          label: Text('FILTER CHIP'),
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
