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
          decoration: BoxDecoration(
              border: Border.all(color: Colors.purple[400], width: 2.5)),
          child: Column(children: <Widget>[
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
                          style:
                              TextStyle(fontSize: 18, color: Colors.black54)),
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
                          style:
                              TextStyle(fontSize: 18, color: Colors.black54)),
                    ),
                  ),
                ],
              )
            ]),
          ]),
        ),
      ),
    );
    return materialApp;
  }
}
