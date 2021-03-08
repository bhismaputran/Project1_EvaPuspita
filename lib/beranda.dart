import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text('Beranda'),
        ]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Click search');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              print('click start');
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Komang Eva Puspita Dewi"),
                accountEmail: new Text("evapuspita789@gmail.com"),
                currentAccountPicture: new GestureDetector(
                  onTap: () {},
                  child: new CircleAvatar(),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/appimages/a2.jpg'),
                      fit: BoxFit.cover),
                )),
            new ListTile(
              title: new Text('Notifications'),
              trailing: new Icon(Icons.notifications_none),
            ),
            new ListTile(
              title: new Text('Wishlist'),
              trailing: new Icon(Icons.bookmark_border),
            ),
            new ListTile(
              title: new Text('Akun'),
              trailing: new Icon(Icons.verified_user),
            ),
            Divider(
              height: 2,
            ),
            new ListTile(
              title: new Text('setting'),
              trailing: new Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: new ListView(children: <Widget>[
        Image.asset("a3.jpg"),
        Container(
          color: Colors.orange[100],
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tunggakan : -',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.local_offer,
                color: Colors.red[500],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Theme.of(context).dividerColor)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.grid_on, color: Colors.blueGrey),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Semua Kategori',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.shop, color: Colors.blueGrey),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Fashion',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.computer, color: Colors.blueGrey),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Computer',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.smartphone, color: Colors.blueGrey),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Gadget',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Colors.redAccent, Colors.pinkAccent],
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Smart Phone',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ),
              Text(' Click Sini !'),
            ],
          ),
        ),
      ]),
    );
  }
}
