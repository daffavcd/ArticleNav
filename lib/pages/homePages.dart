import 'package:flutter/material.dart';
import 'package:jobsheet6/models/item.dart';

class HomePages extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Terasi',
        price: 8000,
        image:
            'https://upload.wikimedia.org/wikipedia/commons/b/b9/Belachan_or_Terasi_Bangka.jpg',
        desc:
            'Terasi atau belacan adalah bumbu masak yang dibuat dari ikan dan/atau udang rebon yang difermentasikan, berbentuk seperti adonan atau pasta dan berwarna hitam-coklat, kadang ditambah dengan bahan pewarna sehingga menjadi kemerahan.'),
    Item(
        name: 'Santan',
        price: 6000,
        image:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Cononut_milk.JPG/250px-Cononut_milk.JPG',
        desc:
            'Santan adalah cairan berwarna putih susu yang berasal dari parutan daging kelapa tua yang dibasahi sebelum akhirnya diperas dan disaring.'),
    Item(
        name: 'Lengkuas',
        price: 3400,
        image:
            'https://asset.kompas.com/crops/pKiQjR8Ynnpq4nMQDY_JUfIQfWI=/0x33:500x366/780x390/data/photo/2020/02/09/5e40220c75201.jpg',
        desc:
            'Lengkuas, laos atau kelawas (Karo) (Alpinia galanga) merupakan jenis tumbuhan umbi-umbian yang bisa hidup di daerah dataran tinggi maupun dataran rendah. Umumnya masyarakat memanfaatkannya sebagai campuran bumbu masak dan pengobatan tradisional.'),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Card(
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
                ),
              );
            }),
      ),
    );
  }
}
