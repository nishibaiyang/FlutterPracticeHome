/*
 * main.dart
 * Copyright 2018 Qunhe Tech, all rights reserved.
 * Qunhe PROPRIETARY/CONFIDENTIAL, any form of usage is subject to approval.
 */

import 'package:flutter/material.dart';
import 'package:flutter_module/bottom_navigation_bar/BottomNavigationWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter bottomNavigationBar',
      theme: new ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}
