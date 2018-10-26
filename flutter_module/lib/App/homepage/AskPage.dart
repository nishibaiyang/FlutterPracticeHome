import 'package:flutter/material.dart';
import 'package:flutter_module/App/GlobalConfig.dart';

class AskPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AskPageState();
  }
}

class AskPageState extends State<AskPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: <Widget>[
                new FlatButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: new Icon(Icons.clear, color: Colors.white70),
                  label: new Text(""),
                ),
                Expanded(
                    child: Container(
                  child: Text('提问'),
                )),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    '下一步',
                    style: TextStyle(color: Colors.white12),
                  ),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Container(
                child: new TextField(
                  decoration: new InputDecoration(
                      hintText: "请输入标题",
                      hintStyle: new TextStyle(color: Colors.white70)),
                ),
                margin: const EdgeInsets.all(16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
