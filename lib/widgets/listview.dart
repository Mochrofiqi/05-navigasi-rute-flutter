import 'package:flutter/material.dart';
import 'package:navigasi_rute_05/models/item.dart';
import 'package:navigasi_rute_05/pages/item_page.dart';
import 'package:navigasi_rute_05/widgets/card.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                    child: Cards(item: item),
                  );
                }
    );
  }
}

                