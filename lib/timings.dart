import 'package:flutter/material.dart';
import 'ms.dart' as ms;
void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  HomePage() : super();

  final String title = "Flutter Bottom Tab demo";

  @override

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(body:  ListView(children: [
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
                    decoration: ms.myBoxDecoration(),
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
                    decoration: ms.myBoxDecoration(),
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
                    decoration: ms.myBoxDecoration(),
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
    ]),);
  
}
}