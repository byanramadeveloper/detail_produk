import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Barang Online',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Info Produk',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/gorio.jpg',
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text(
                    "goriorio off white",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  subtitle: Text(
                    'Xianjiang, China',
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'RP 666.666',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Deskripsi'),
                  subtitle: Text(
                    'Goriorio off white Original,dikirim dari Xianjiang china timur,1 pack isi 3 ,ready stock 5 kotak besar  pesan 1 box ,gadai pankereas  via wa : 0834-756-666',
                    style: TextStyle(
                      wordSpacing: 2,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Text(
                    'Ulasan (1)',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.squarespace-cdn.com/content/54b7b93ce4b0a3e130d5d232/1519987165674-QZAGZHQWHWV8OXFW6KRT/icon.png?content-type=image%2Fpng',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  color: Colors.black26,
                  child: Text(' memuaskan ( ͡° ͜ʖ ͡°)b mantap')),
            ],
          )
        ],
      ),
    );
  }
}
