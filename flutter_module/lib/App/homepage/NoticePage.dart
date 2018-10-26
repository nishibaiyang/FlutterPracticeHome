import 'package:flutter/material.dart';

class NoticePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NoticePageState();
  }
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('通知'),
        ),
        body: Center(
          child: Text('还没有内容！'),
        ),
      ),
    );
  }
}
