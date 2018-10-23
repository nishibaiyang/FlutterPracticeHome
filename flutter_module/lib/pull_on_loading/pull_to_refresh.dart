import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PullToRefreshPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<PullToRefreshPage> {
  List<String> images;

  @override
  void initState() {
    super.initState();
    images = List<String>();
    fetchTen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pull to loading demo'),
      ),
      body: RefreshIndicator(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
            itemCount: images.length,
          ),
          onRefresh: null),
    );
  }

  fetch() async {
    final response = await http.get('http://dog.ceo/api/breeds/image/random');
    if (response.statusCode == 200) {
      setState(() {
        images.add(json.decode(response.body)['message']);
      });
    } else {
      throw Exception('Failed to load images');
    }
  }

  fetchTen() {
    for (int i = 0; i < 10; i++) {
      fetch();
    }
  }
}
