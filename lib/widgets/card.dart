import 'package:flutter/material.dart';
import 'package:navigasi_rute_05/models/item.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(child: Text(item.name)),
            Expanded(
                child: Text(
              item.merk,
              textAlign: TextAlign.center,
            )),
            Expanded(
                child: Text(
              item.price.toString(),
              textAlign: TextAlign.end,
            ))
          ],
        ),
      ),
    );
  }
}
