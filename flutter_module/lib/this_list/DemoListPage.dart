import 'package:flutter/material.dart';
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
              'bottom_navigation_widget',
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
              'bottom_app_bar_demo',
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
              'sliver_screen',
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
              'frosted_glass_demo',
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
              'keep_alove_demo',
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
              'search_bar_demo',
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
              'text_field_focus_demo',
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
              'expansion_tile_demo',
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
              'will_pop_scpoe_page',
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
              'splash_screen',
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
              'pulldown_refresh_pullipload_page',
              style: TextStyle(color: Colors.amber),
            ),
          ),
        ],
      ),
    );
  }
}
