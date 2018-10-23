import 'package:flutter/material.dart';

class ActionChipDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ActionChipDemoState();
  }
}

class _ActionChipDemoState extends State<ActionChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('action chip demo'),
      ),
      body: Builder(builder: (BuildContext context) {
        return Center(
          child: ActionChip(
              label: Text('ACTION CHIP'),
              onPressed: () {
                setState(() {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('on Tab')));
                });
              }),
        );
      }),
    );
  }
}
