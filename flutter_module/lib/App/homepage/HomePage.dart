import 'package:flutter/material.dart';
import 'package:flutter_module/App/GlobalConfig.dart';
import 'package:flutter_module/App/homepage/AskPage.dart';
import 'package:flutter_module/App/homepage/Follow.dart';
import 'package:flutter_module/App/homepage/Hot.dart';
import 'package:flutter_module/App/homepage/Recommend.dart';
import 'package:flutter_module/beaytiful_search_bar_demo/search_bar_demo.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  Widget barSearch() {
    return Container(
      child: new Row(
        children: <Widget>[
          Expanded(
              child: FlatButton.icon(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SearchBarDemo();
                    }));
                  },
                  icon: Icon(
                    Icons.search,
                    color: GlobalConfig.fontColor,
                    size: 16.0,
                  ),
                  label: Text(
                    '坚果R1摄像头',
                    style: TextStyle(color: GlobalConfig.fontColor),
                  ))),
          Container(
            decoration: BoxDecoration(
                border: BorderDirectional(
                    start:
                        BorderSide(color: GlobalConfig.fontColor, width: 1.0))),
            height: 14.0,
            width: 1.0,
          ),
          Container(
            child: FlatButton.icon(
                onPressed: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new AskPage();
                  }));
                },
                icon: Icon(
                  Icons.border_color,
                  color: GlobalConfig.fontColor,
                  size: 14.0,
                ),
                label: Text(
                  '提问',
                  style: TextStyle(color: GlobalConfig.fontColor),
                )),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: barSearch(),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: '关注',
                ),
                Tab(
                  text: '推荐',
                ),
                Tab(
                  text: '热榜',
                )
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
            ),
          ),
          body:
              TabBarView(children: [new Follow(), new Recommend(), new Hot()]),
        ));
  }
}
