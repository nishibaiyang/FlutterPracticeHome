import 'package:flutter/material.dart';
import 'package:flutter_module/App/GlobalConfig.dart';

class IdeaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IdeaPageState();
  }
}

class _IdeaPageState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('想法'),
          backgroundColor: Colors.blue,
          actions: <Widget>[Container()],
        ),
        body: new Center(
          child: Text('想法'),
        ),
      ),
      theme: GlobalConfig.themeData,
    );
  }
}
