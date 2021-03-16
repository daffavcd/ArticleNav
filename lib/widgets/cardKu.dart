import 'package:flutter/material.dart';
import 'package:jobsheet6/models/item.dart';

class Cardku extends StatelessWidget {
  const Cardku({
    Key key,
    @required this.item,
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
              item.price.toString(),
              textAlign: TextAlign.end,
            ))
          ],
        ),
      ),
    );
  }
}
