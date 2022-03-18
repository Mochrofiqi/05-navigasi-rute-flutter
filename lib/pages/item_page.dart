import 'dart:ui';
import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage(
      {Key? key, required this.name, required this.merk, required this.price})
      : super(key: key);

  static const setName = '/item';

  final String name;
  final String merk;
  final int price;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Item Page'), backgroundColor: Colors.brown),
          body: Container(
              margin: const EdgeInsets.all(8),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name), 
                  Text(' ' + merk),
                  Text(' ' + price.toString()
                  ),  
                ],
              ))),
        ));
  }
}
