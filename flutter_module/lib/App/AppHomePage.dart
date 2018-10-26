import 'package:flutter/material.dart';
import 'package:flutter_module/App/GlobalConfig.dart';
import 'package:flutter_module/App/elements/NavigationIconView.dart';
import 'package:flutter_module/App/homepage/HomePage.dart';
import 'package:flutter_module/App/homepage/IdeaPage.dart';
import 'package:flutter_module/App/homepage/MarketPage.dart';
import 'package:flutter_module/App/homepage/MyPage.dart';
import 'package:flutter_module/App/homepage/NoticePage.dart';

class AppHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IndexState();
  }
}

class _IndexState extends State<AppHomePage> with TickerProviderStateMixin {
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      NavigationIconView(
        icon: Icon(Icons.assignment),
        title: Text("首页"),
        vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.all_inclusive),
        title: Text("想法"),
        vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.add_shopping_cart),
        title: Text("市场"),
        vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.add_alert),
        title: Text("通知"),
        vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.perm_identity),
        title: Text("我的"),
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }
    _pageList = <StatefulWidget>[
      HomePage(),
      IdeaPage(),
      MarketPage(),
      NoticePage(),
      MyPage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState(() {});
  }

  @override
  void dispose() {
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
      items: _navigationViews
          .map((NavigationIconView navigationIconView) =>
              navigationIconView.item)
          .toList(),
      currentIndex: _currentIndex,
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      },
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: _currentPage,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
      theme: GlobalConfig.themeData,
    );
  }
}
