import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MarketPageState();
  }

}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('市场'),
        ),
        body: new Center(
          child: Text('市场'),
        ),
      ),
    );
  }
}