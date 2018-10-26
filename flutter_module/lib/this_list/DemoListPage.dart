import 'package:flutter/material.dart';
import 'package:flutter_module/App/app_splash_screen.dart';
import 'package:flutter_module/beaytiful_search_bar_demo/search_bar_demo.dart';
import 'package:flutter_module/bottom_appbar/BottomAppBarDemo.dart';
import 'package:flutter_module/bottom_navigation_bar/BottomNavigationWidget.dart';
import 'package:flutter_module/expansion_demo/expansion_title.dart';
import 'package:flutter_module/frosted_glass_demo/frosted_glass_demo.dart';
import 'package:flutter_module/keep_alive_demo/KeepAliveDemo.dart';
import 'package:flutter_module/pull_on_loading/PullDownRefreshPullUpLoad.dart';
import 'package:flutter_module/pull_on_loading/pull_on_loading.dart';
import 'package:flutter_module/pull_on_loading/pull_to_refresh.dart';
import 'package:flutter_module/sliver_demo/sliver_demo.dart';
import 'package:flutter_module/splash_screen_demo/splash_screen.dart';
import 'package:flutter_module/textfields_focus_demo/textfields_focus_demo.dart';
import 'package:flutter_module/will_pop_scope_demo/form_pop_demo.dart';
import 'package:flutter_module/will_pop_scope_demo/will_pop_scpoe_demo.dart';

class DemoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          MaterialButton(
            onPressed: () {
//              Navigator.of(context).pushNamed('/bottom_navigation_widget');

              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return BottomNavigationWidget();
              }));
            },
            child: Text(
              '首页底部导航',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context).pushNamed('/bottom_app_bar_demo');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return BottomAppBarDemo();
              }));
            },
            child: Text(
              '子页面底部导航',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context).pushNamed('/sliver_screen');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return SliverScreen();
              }));
            },
            child: Text(
              'sliver tab',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context).pushNamed('/frosted_glass_demo');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return FrostedGlassDemo();
              }));
            },
            child: Text(
              '高斯模糊',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context).pushNamed('/keep_alove_demo');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return KeepAliveDemo();
              }));
            },
            child: Text(
              '保持页面状态',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context).pushNamed('/search_bar_demo');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return SearchBarDemo();
              }));
            },
            child: Text(
              '状态栏搜索',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context).pushNamed('/text_field_focus_demo');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return TextFieldFocusDemo();
              }));
            },
            child: Text(
              'edittext',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context).pushNamed('/expansion_tile_demo');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return ExpansionTileDemo();
              }));
            },
            child: Text(
              '扩展栏',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context).pushNamed('/will_pop_scpoe_page');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return WillPopScpoePage();
              }));
            },
            child: Text(
              '退出App',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context).pushNamed('/splash_screen');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return SplashScreen();
              }));
            },
            child: Text(
              '闪屏页',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context)
//                  .pushNamed('/pulldown_refresh_pullipload_page');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
//                return PullToRefreshPage();
                return PullOnLoading();
              }));
            },
            child: Text(
              '下拉刷新',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          MaterialButton(
            onPressed: () {
//              Navigator.of(context)
//                  .pushNamed('/pulldown_refresh_pullipload_page');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
//                return PullToRefreshPage();
                return AppSplashScreen();
              }));
            },
            child: Text(
              'App',
              style: TextStyle(color: Colors.amber),
            ),
          ),
        ],
      ),
    );
  }
}
