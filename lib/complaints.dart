import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Post {
  final String complain;
  final String name;
  final String timestamp;
  final String body;
  final int support;

  Post({this.complain, this.name, this.timestamp, this.body, this.support});

  factory Post.fromDocument(DocumentSnapshot document) {
    return new Post(
      complain: document['complain'] ?? " ",
      body: document['body'] ?? " ",
      timestamp: document['timestamp'] ?? " ",
      support: document['support'] ?? " ",
      name: document['name'] ?? " ",
    );
  }
}

class MyHomePage extends StatefulWidget {
  DocumentSnapshot snap;
  MyHomePage({Key key, this.snap}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState(snaps: snap);
}

class _MyHomePageState extends State<MyHomePage> {
  DocumentSnapshot snaps;
  _MyHomePageState({Key key, this.snaps});
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    Post post;
    post = Post.fromDocument(snaps);
    return Container(
      color: Colors.grey[200],
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(7.0),
              child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                            title: Text(post.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22.0,
                                    fontFamily: 'Segoe UI',
                                    color: Colors.black)),
                            subtitle: Text(post.timestamp,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Segoe UI',
                                    color: Colors.grey[700])),
                            ),
                        SizedBox(height: 10.0),
                      Padding(padding: EdgeInsets.all(10),
                      child: Text(post.complain,textScaleFactor:2),
                      ),
                      
                      Padding(padding: EdgeInsets.all(10),
                      child: Text(post.body,),
                      ),
                       
                      ]))),
        ],
      ),
    );
  }
}
