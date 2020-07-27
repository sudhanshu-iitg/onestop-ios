import 'package:flutter/material.dart';
import 'ms.dart' as ms;

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: HomePage());
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
            height: 460.0,
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: AssetImage('images/login.jpg'),
                fit: BoxFit.cover,
              ),
            )),
        SizedBox(
          height: 20.0,
        ),
        Container(
          height: 40.0,
          width: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Color(0xFFFECA05)),
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: Color(0xFFFECA05),
            onPressed: () {
                Navigator.pushReplacement(
              context,
              new MaterialPageRoute(builder: (context) {
                return ms.MyHomePage();
              }),
            );
            },
            child: Text(
              'LOGIN WITH OUTLOOK',
              style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                  letterSpacing: 0.5,
                  color: Colors.grey[900]),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text('Or'),
        SizedBox(
          height: 10.0,
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              new MaterialPageRoute(builder: (context) {
                return ms.TabsDemoScreen();
              }),
            );
          
          },
          child: Text(
            'Continue as guest',
            style: TextStyle(
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w400,
                fontSize: 18.0,
                letterSpacing: 3.0,
                color: Colors.grey[700]),
          ),
        ),
      ],
    ));
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

class About extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('about', style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xFF3C82FE),
          //leading: Icon(Icons.menu,color:Colors.white),
        ),
        body: ListView(children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                            title: Text('OneStopIITG',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 28.0,
                                    fontFamily: 'Segoe UI',
                                    color: Colors.grey[700])),
                            subtitle: Text('c2018 SWC',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Segoe UI',
                                    color: Colors.grey[700])),
                            leading: Image.asset(
                              'images/bus.jpg',
                              width: 35.0,
                              height: 35.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ListTile(
                              title: Text('Version',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Segoe UI',
                                      color: Colors.grey[700])),
                              subtitle: Text('1.0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Segoe UI',
                                      color: Colors.grey[700])),
                              leading: Icon(Icons.info_outline,
                                  color: Colors.grey[800])),
                          ListTile(
                              title: Text('OneStopIITG',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Segoe UI',
                                      color: Colors.grey[800])),
                              subtitle: Text('c2018 SWC',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Segoe UI',
                                      color: Colors.grey[700])),
                              leading:
                                  Icon(Icons.info, color: Colors.grey[800])),
                          ListTile(
                              title: Text('Report Bugs/Help',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Segoe UI',
                                      color: Colors.grey[800])),
                              subtitle: Text(
                                  'We hate bugs! In mess food or our app',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Segoe UI',
                                      color: Colors.grey[700])),
                              leading: Icon(Icons.bug_report,
                                  color: Colors.grey[800])),
                        ]))),
            SizedBox(height: 10.0),
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
                            title: Text('Team',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Segoe UI',
                                    color: Colors.grey[900])),
                          ),
                          ListTile(
                            title: Text('Team',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Segoe UI',
                                    color: Colors.grey[700])),
                            leading: Icon(Icons.group, color: Colors.grey[800]),
                          ),
                          Container(
                            color: Colors.grey[200],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 35.0),
                                ListTile(
                                    title: Text('Nikhil Gaddam',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Segoe UI',
                                            color: Colors.grey[900])),
                                    subtitle: Text('SWC General Secretary',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Segoe UI',
                                            color: Colors.grey[700])),
                                    leading: Container(
                                      width: 80.0,
                                      height: 80.0,
                                      decoration: new BoxDecoration(
                                        color: Colors.white,
                                        image: new DecorationImage(
                                          image: AssetImage('images/bus.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: new BorderRadius.all(
                                            new Radius.circular(50.0)),
                                        border: new Border.all(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                      ),
                                    )),
                                SizedBox(height: 35.0),
                                ListTile(
                                    title: Text('Nikhil Gaddam',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Segoe UI',
                                            color: Colors.grey[900])),
                                    subtitle: Text('SWC General Secretary',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Segoe UI',
                                            color: Colors.grey[700])),
                                    leading: Container(
                                      width: 80.0,
                                      height: 80.0,
                                      decoration: new BoxDecoration(
                                        color: Colors.white,
                                        image: new DecorationImage(
                                          image: AssetImage('images/bus.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: new BorderRadius.all(
                                            new Radius.circular(50.0)),
                                        border: new Border.all(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                      ),
                                    )),
                                SizedBox(height: 35.0),
                                ListTile(
                                    title: Text('Nikhil Gaddam',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Segoe UI',
                                            color: Colors.grey[900])),
                                    subtitle: Text('SWC General Secretary',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Segoe UI',
                                            color: Colors.grey[700])),
                                    leading: Container(
                                      width: 80.0,
                                      height: 80.0,
                                      decoration: new BoxDecoration(
                                        color: Colors.white,
                                        image: new DecorationImage(
                                          image: AssetImage('images/bus.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: new BorderRadius.all(
                                            new Radius.circular(50.0)),
                                        border: new Border.all(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                      ),
                                    )),
                                SizedBox(height: 35.0),
                                ListTile(
                                    title: Text('Nikhil Gaddam',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Segoe UI',
                                            color: Colors.grey[900])),
                                    subtitle: Text('SWC General Secretary',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Segoe UI',
                                            color: Colors.grey[700])),
                                    leading: Container(
                                      width: 80.0,
                                      height: 80.0,
                                      decoration: new BoxDecoration(
                                        color: Colors.white,
                                        image: new DecorationImage(
                                          image: AssetImage('images/bus.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: new BorderRadius.all(
                                            new Radius.circular(50.0)),
                                        border: new Border.all(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                      ),
                                    )),
                                SizedBox(height: 35.0),
                              ],
                            ),
                          )
                        ]))),
          ])
        ]));
  }
}
