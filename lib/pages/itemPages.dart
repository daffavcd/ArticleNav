import 'package:flutter/material.dart';
import 'package:jobsheet6/models/item.dart';
import 'package:jobsheet6/widgets/itemAll.dart';

class ItemPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item tempItem = ModalRoute.of(context).settings.arguments;

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
          decoration: BoxDecoration(
              border: Border.all(color: Colors.purple[400], width: 2.5)),
          child: ItemAll(tempItem: tempItem),
        ),
      ),
    );
    return materialApp;
  }
}
