import 'package:flutter/material.dart';
import 'package:jobsheet6/models/item.dart';

class ItemAll extends StatelessWidget {
  const ItemAll({
    Key key,
    @required this.tempItem,
  }) : super(key: key);

  final Item tempItem;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Column(children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Text(
                  tempItem.name,
                  style: TextStyle(fontSize: 22, color: Colors.black87),
                ),
              ),
            ),
          ],
        )
      ]),
      Column(children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                height: 270,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(tempItem.image),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
      Column(children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(tempItem.desc,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18, color: Colors.black54)),
              ),
            ),
          ],
        )
      ]),
      Column(children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue[50],
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Harga Eceran Tertinggi :  Rp. " +
                        tempItem.price.toString() +
                        ",00",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18, color: Colors.black54)),
              ),
            ),
          ],
        )
      ]),
    ]);
  }
}
