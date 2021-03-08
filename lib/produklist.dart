import 'package:flutter/material.dart';
import 'detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Katalog")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "Vivo Y12",
                        price: 1500000,
                        image: "1.jpg",
                        star: 1,
                      )));
            },
            child: ProductBox(
              name: "Vivo Y15",
              price: 2000000,
              image: "2.jpg",
              star: 1,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "Vivo Y 19",
                        price: 2000000,
                        image: "3.jpg",
                        star: 3,
                      )));
            },
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.yellow,
      ));
    }
    return Container(
      padding: EdgeInsets.all(10),
      //height: 120
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimages/" + image,
              width: 150,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(this.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      Text(this.description),
                      Text("Price: " + this.price.toString(),
                          style: TextStyle(color: Colors.blueAccent)),
                      Row(children: <Widget>[
                        Row(
                          children: children,
                        )
                      ])
                    ],
                  )),
            )
          ]),
    );
  }
}
