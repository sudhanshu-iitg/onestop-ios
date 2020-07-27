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
    return Scaffold(body:  TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Container(
                    color: Colors.grey[200],
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.all(7.0),
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
                                          title: Text('Nikhil Gaddam',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 22.0,
                                                  fontFamily: 'Segoe UI',
                                                  color: Colors.black)),
                                          subtitle: Text(
                                              'SWC General Secretary',
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
                                                image: AssetImage(
                                                    'images/bus.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )),
                                      SizedBox(height: 10.0),
                                      Container(
                                        height: 300.0,
                                        decoration: new BoxDecoration(
                                          color: Colors.white,
                                          image: new DecorationImage(
                                            image: AssetImage('images/bus.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            10.0, 15.0, 10.0, 15.0),
                                        child: Text(
                                            'In Flutter, one can apply a theme to the app using ThemeData class. But there two propeties of this class that confuses me',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Segoe UI',
                                                color: Colors.grey[600])),
                                      ),
                                    ]))),
                        RaisedButton(
                          onPressed: () {
                            //Navigator.pop(context);
                          },
                          child: Text('Go Back'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  Container(
                      color: Colors.grey[200],
                      child: Column(
                        children: <Widget>[
                          Card(
                              child: Container(
                                  margin: const EdgeInsets.all(10.0),
                                  child: ListTile(
                                      title: Text(
                                          'Proof of payment of Seat Acceptance Fee'),
                                      subtitle: Text(
                                          '(Rs. 35,000/- or Rs.15,000)')))),
                          Card(
                              child: Container(
                                  margin: const EdgeInsets.all(10.0),
                                  child: ListTile(
                                      title: Text(
                                          'Family Annual Income Certificate'),
                                      subtitle: Text(
                                          'If you family income is less than 5 lakhs in last financial year then Family Annual Income Certificate in the last financial year (Period:April 1,2017 to March 31,2018) issued by competent authority (District Magistrate/ Revenue Officer/ Tehsildar)')))),
                          Card(
                              child: Container(
                                  margin: const EdgeInsets.all(10.0),
                                  child: ListTile(
                                      title: Text(
                                          'Passport(for foreign nationals)'),
                                      subtitle: Text(
                                          'or OCI Certificate or PIO card, if applicable')))),
                          Card(
                              child: Container(
                                  margin: const EdgeInsets.all(10.0),
                                  child: ListTile(
                                    title: Text(
                                        'DS Certificate, if applicable [format as given in JoSAA Portal]'),
                                    //subtitle:Text('(Rs. 35,000/- or Rs.15,000)')
                                  )))
                        ],
                      )),
                ],
              )
            ],
          ),);
  
}
}