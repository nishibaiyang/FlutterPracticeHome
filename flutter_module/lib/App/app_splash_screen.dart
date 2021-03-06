import 'package:flutter/material.dart';
import 'package:flutter_module/App/AppHomePage.dart';
import 'package:flutter_module/splash_screen_demo/splash_screen_home.dart';

class AppSplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<AppSplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => AppHomePage()),
            (route) => route == null);
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new FadeTransition(
      opacity: _animation,
      child: new Image.asset(
        'assets/splash.jpg',
        scale: 2.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
