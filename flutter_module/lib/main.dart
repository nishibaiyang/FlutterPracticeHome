//import 'package:flutter/material.dart';
//
//void main() => runApp(new MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
//        // counter didn't reset back to zero; the application is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: new MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => new _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return new Scaffold(
//      appBar: new AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: new Text(widget.title),
//      ),
//      body: new Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: new Column(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug paint" (press "p" in the console where you ran
//          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
//          // window in IntelliJ) to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new Text(
//              'Qiyu1 have pushed the button this many times:',
//            ),
//            new Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: new Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}

import 'package:flutter/material.dart';
import 'package:flutter_module/beaytiful_search_bar_demo/search_bar_demo.dart';
import 'package:flutter_module/bottom_appbar/BottomAppBarDemo.dart';
import 'package:flutter_module/bottom_navigation_bar/BottomNavigationWidget.dart';
import 'package:flutter_module/chip_demo/ChipDemo.dart';
import 'package:flutter_module/chip_demo/ChoiceChipDemo.dart';
import 'package:flutter_module/chip_demo/FilterChipDemo.dart';
import 'package:flutter_module/chip_demo/InputChipDemo.dart';
import 'package:flutter_module/chip_demo/action_chip.dart';
import 'package:flutter_module/expansion_demo/expansion_title.dart';
import 'package:flutter_module/frosted_glass_demo/frosted_glass_demo.dart';
import 'package:flutter_module/keep_alive_demo/KeepAliveDemo.dart';
import 'package:flutter_module/pull_on_loading/PullDownRefreshPullUpLoad.dart';
import 'package:flutter_module/pull_on_loading/pull_on_loading.dart';
import 'package:flutter_module/sliver_demo/sliver_demo.dart';
import 'package:flutter_module/splash_screen_demo/splash_screen.dart';
import 'package:flutter_module/textfields_focus_demo/textfields_focus_demo.dart';
import 'package:flutter_module/this_list/DemoListPage.dart';
import 'package:flutter_module/warp_demo/warp_demo.dart';
import 'package:flutter_module/will_pop_scope_demo/will_pop_scpoe_demo.dart';
//import 'package:flutter_module/will_pop_scope_demo/form_pop_demo.dart';

//void main() => runApp(new MyApp());

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    routes: <String, WidgetBuilder>{
      '/bottom_navigation_widget': (BuildContext context) => new MaterialApp(
            home: new BottomNavigationWidget(),
            title: 'bottom_navigation_widget',
            theme: new ThemeData.light(),
          ),
      '/bottom_app_bar_demo': (BuildContext context) => new MaterialApp(
            title: 'bottom_app_bar_demo',
            home: new BottomAppBarDemo(),
            theme: new ThemeData.light(),
          ),
      '/sliver_screen': (BuildContext context) => new MaterialApp(
            title: 'sliver_screen',
            home: new SliverScreen(),
            theme: new ThemeData.light(),
          ),
      '/frosted_glass_demo': (BuildContext context) => new MaterialApp(
            title: 'frosted_glass_demo',
            home: new FrostedGlassDemo(),
            theme: new ThemeData.light(),
          ),
      '/keep_alove_demo': (BuildContext context) => new MaterialApp(
            title: 'keep_alove_demo',
            home: new KeepAliveDemo(),
            theme: new ThemeData.light(),
          ),
      '/search_bar_demo': (BuildContext context) => new MaterialApp(
            title: 'search_bar_demo',
            home: new SearchBarDemo(),
            theme: new ThemeData.light(),
          ),
      '/text_field_focus_demo': (BuildContext context) => new MaterialApp(
            title: 'text_field_focus_demo',
            home: new TextFieldFocusDemo(),
            theme: new ThemeData.light(),
          ),
      '/expansion_tile_demo': (BuildContext context) => new MaterialApp(
            title: 'expansion_tile_demo',
            home: new ExpansionTileDemo(),
            theme: new ThemeData.light(),
          ),
      '/will_pop_scpoe_page': (BuildContext context) => new MaterialApp(
            title: 'will_pop_scpoe_page',
            home: new WillPopScpoePage(title: 'Flutter Demo Home Page'),
            theme: new ThemeData.light(),
          ),
      '/splash_screen': (BuildContext context) => new MaterialApp(
            title: 'splash_screen',
            home: new SplashScreen(),
            theme: new ThemeData.light(),
          ),
      '/pulldown_refresh_pullipload_page': (BuildContext context) =>
          new MaterialApp(
            title: 'pulldown_refresh_pullipload_page',
            home: new PullDownRefreshPullUpLoadPage(),
            theme: new ThemeData.light(),
          ),
    },
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoListPage(),
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter bottomNavigationBar',
//      theme: new ThemeData.light(),
//      home: BottomNavigationWidget(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter bottomNavigationBar',
//      theme: new ThemeData.light(),
//      home: BottomAppBarDemo(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'bottom app bar',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: BottomAppBarDemo(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: new SliverScreen(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: Scaffold(
//        body: FrostedGlassDemo(),
//      ),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: KeepAliveDemo(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData.light(),
//      home: SearchBarDemo(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData.light(),
//      home: TextFieldFocusDemo(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData.dark(),
//      home: WarpDemo(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData.light(),
////      home: ChipDemo(),
////      home: ActionChipDemo(),
////      home: FilterChipDemo(),
////      home: ChoiceChipDemo(),
//      home: InputChipDemo(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData.dark(),
////      home: ExpansionPanelListDemo(),
//      home: ExpansionTileDemo(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: new WillPopScpoePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: SplashScreen(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: PullDownRefreshPullUpLoadPage(),
//    );
//  }
//}
