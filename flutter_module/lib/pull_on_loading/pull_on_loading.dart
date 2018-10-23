import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PullOnLoading extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PullOnLoading> {
  List<String> images;
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    images = List<String>();
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
      body: ListView.builder(
          controller: _controller,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
//              constraints: BoxConstraints.tightFor(height: 150.0),
              child: Image.network(
                images[index],
                fit: BoxFit.cover,
              ),
            );
          }),
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
      images.add('https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3996331613,2116043442&fm=26&gp=0.jpg');
      images.add('https://image.baidu.com/search/detail?ct=503316480&z=&tn=baiduimagedetail&ipn=d&word=400x200&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=-1&cs=204244291,1068192962&os=3139216497,2349519883&simid=0,0&pn=10&rn=1&di=142406473770&ln=1868&fr=&fmq=1540182720479_R&ic=0&s=undefined&se=&sme=&tab=0&width=&height=&face=undefined&is=0,0&istype=2&ist=&jit=&bdtype=0&spn=0&pi=0&gsm=0&objurl=http%3A%2F%2Ft-1.tuzhan.com%2F996f84712bdb%2Fupn1%2Fl%2F2010-12-23%2F11%2Fguqingyuan.tuzhan.com_2ba6543e95ac48498440c7f7f58260ba.jpg&rpstart=0&rpnum=0&adpicid=0');

//      fetch();
    }
  }
}
