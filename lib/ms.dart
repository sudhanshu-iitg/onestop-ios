import 'package:flutter/material.dart';
import 'package:onestopios/timings.dart';
import 'drawer.dart' as drawer;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'feed.dart' as post;
import 'complaints.dart' as complain;

class TabsDemoScreen extends StatefulWidget {
  TabsDemoScreen() : super();

  final String title = "Flutter Bottom Tab demo";

  @override
  _TabsDemoScreenState createState() => _TabsDemoScreenState();
}

class _TabsDemoScreenState extends State<TabsDemoScreen> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
  MyHomePage(),
    MyComplainPage(),

    ListView(children: [
      Column(
          //ye wala stats hai !!!!!!!!!!!
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 0.0,
              child: new InkWell(
                onTap: () {
                  print("tapped");
                },
                child: Container(
                    height: 130.0,
                    margin: const EdgeInsets.all(2.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: myBoxDecoration(),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Ferry',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28.0,
                                  fontFamily: 'Segoe UI',
                                  color: Colors.grey[700])),
                          Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/bus.jpg'),
                                      fit: BoxFit.cover)))
                        ])),
              ),
            ),
            Card(
              elevation: 0.0,
              child: new InkWell(
                onTap: () {
                  print("tapped");
                },
                child: Container(
                    height: 130.0,
                    margin: const EdgeInsets.all(2.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: myBoxDecoration(),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Internal Bus',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28.0,
                                  fontFamily: 'Segoe UI',
                                  color: Colors.grey[700])),
                          Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/bus.jpg'),
                                      fit: BoxFit.cover)))
                        ])),
              ),
            ),
            Card(
              elevation: 0.0,
              child: new InkWell(
                onTap: () {
                  //Navigator.pushNamed(context, '/first3');
                },
                child: Container(
                    height: 130.0,
                    margin: const EdgeInsets.all(2.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: myBoxDecoration(),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('IITG Bus',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28.0,
                                  fontFamily: 'Segoe UI',
                                  color: Colors.grey[700])),
                          Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/bus.jpg'),
                                      fit: BoxFit.cover)))
                        ])),
              ),
            ),
          ])
    ]),
  ];

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Complaints"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            title: Text("Timings"),
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState();

  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('feed').orderBy('time', descending:true).snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData)
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Scaffold(body: Center(child: Text('Loading...')));
            default:
              return Scaffold(
                drawer: drawer.drawerItems,
                appBar: AppBar(title: Text("home."),),
                body: ListView(
                  children:
                      snapshot.data.documents.map((DocumentSnapshot document) {
                    return post.MyHomePage(snap: document);
                  }).toList(),
                ),
              );
          }
        });
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
      border: Border.all(
        color: Colors.blue, //                   <--- border color
        width: 2.0,
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(12.0) //         <--- border radius here
          ));
}
class MyComplainPage extends StatefulWidget {
  MyComplainPage({
    Key key,
  }) : super(key: key);

  @override
  _MyComplainPageState createState() => _MyComplainPageState();
}

class _MyComplainPageState extends State<MyComplainPage> {
  _MyComplainPageState();

  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('Complain').orderBy('timestamp').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData)
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Scaffold(body: Center(child: Text('Loading...')));
            default:
              return Scaffold(
                drawer: drawer.drawerItems,
                appBar: AppBar(title: Text("home."),),
                body: ListView(
                  children:
                      snapshot.data.documents.map((DocumentSnapshot document) {
                    return complain.MyHomePage(snap: document);
                  }).toList(),
                ),
              );
          }
        });
  }
}
