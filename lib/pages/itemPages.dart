import 'package:flutter/material.dart';
import 'package:jobsheet6/models/item.dart';

class ItemPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item tempItem = ModalRoute.of(context).settings.arguments;
    ;
    var materialApp = MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Item Pages"),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 10.0),
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(
              "Nama : " +
                  tempItem.name +
                  " | Harga : Rp. " +
                  tempItem.price.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, color: Colors.black87)),
        ),
      ),
    );
    return materialApp;
  }
}
