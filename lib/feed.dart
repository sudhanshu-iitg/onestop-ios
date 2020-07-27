import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Post {
  final String disk;
  final String dp;
  final String image;
  final String subtitle;
  final String title;

  Post({this.disk, this.subtitle, this.dp, this.image, this.title});

  factory Post.fromDocument(DocumentSnapshot document) {
    return new Post(
      disk: document['disk'] ?? " ",
      dp: document['dp'] ?? " ",
      image: document['image'] ?? " ",
      subtitle: document['subtitle'] ?? " ",
      title: document['title'] ?? " ",
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
    return
    //  ListView(
    //   children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(0,7,0,7),
          color: Colors.grey[200],
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(7,7,7,7),
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
                                title: Text(post.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22.0,
                                        fontFamily: 'Segoe UI',
                                        color: Colors.black)),
                                subtitle: Text(post.subtitle,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Segoe UI',
                                        color: Colors.grey[700])),
                                leading: Container(
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    image: new DecorationImage(
                                      image: NetworkImage(post.dp),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )),
                            SizedBox(height: 10.0),
                            Container(
                              height: 450.0,
                              // width: 300,
                              padding: EdgeInsets.all(10),
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                image: new DecorationImage(
                                  image: NetworkImage(post.image),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                              child: Text(post.disk,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Segoe UI',
                                      color: Colors.grey[600])),
                            ),
                          ]))),
            ],
          ),
    );
  }
}
