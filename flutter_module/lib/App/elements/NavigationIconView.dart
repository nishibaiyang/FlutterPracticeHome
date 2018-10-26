import 'package:flutter/material.dart';

class NavigationIconView {
  final BottomNavigationBarItem item;
  final AnimationController controller;

  NavigationIconView({Widget icon, Widget title, TickerProvider vsync})
      : item = BottomNavigationBarItem(icon: icon,title: title),
        controller = new AnimationController(
            duration: kThemeAnimationDuration, vsync: vsync);
}
