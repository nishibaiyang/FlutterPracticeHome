import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class GridViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<GridViewPage> {
  ScrollController _controller;
  List<String> images;

  @override
  void initState() {
    super.initState();
    images = List();
    _controller = ScrollController();
    fetchTen();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        fetchTen();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pull to loading demo'),
      ),
      body: RefreshIndicator(
          child: GridView.builder(
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0),
              controller: _controller,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildItem(images[index]);
              }),
          onRefresh: () async {
            await new Future.delayed(const Duration(seconds: 1));
            images.clear();
            fetchTen();
          }),
    );
  }

  fetchTen() {
    for (int i = 0; i < 10; i++) {
      fetch();
    }
  }

  fetch() async {
    final response = await http.get('http://dog.ceo/api/breeds/image/random');
  }

  Widget _buildItem(String url) {
    return Container(
      constraints: BoxConstraints.tightFor(height: 150.0),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
