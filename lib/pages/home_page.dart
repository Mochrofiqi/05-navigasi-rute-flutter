import 'package:flutter/material.dart';
import 'package:navigasi_rute_05/models/item.dart';
import 'item_page.dart';
import 'package:navigasi_rute_05/widgets/listview.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Item> items = [
    Item(name: 'Sugar', merk: 'Gulaku', price: 5000),
    Item(name: 'Salt', merk: 'Garam Dapur', price: 2000),
    Item(name: 'Coffee', merk: 'Kapal Api', price: 7000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Home Page - Moch. Rofiqi (2031710135)'),
            backgroundColor: Colors.brown),
        body: Container(
            margin: const EdgeInsets.all(8),
            child: ListViewBuilder(items: items)));
  }
}
