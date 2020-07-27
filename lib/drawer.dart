import 'package:flutter/material.dart';

final drawerItems = Drawer(
  child: Container(
    color: Color(0xFF3068C9),
    padding: EdgeInsets.all(10.0),
    child: ListView(children: [
      Container(
          child: Center(
        child: Text('Hi User',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              fontFamily: 'Tahoma',
              color: Colors.white,
            )),
      )),
     
      ListTile(
        title: Text('Outlook', style: TextStyle(color: Colors.white)),
        leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
      ),
      ListTile(
        title: Text('Exam TimeTable', style: TextStyle(color: Colors.white)),
        leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
      ),
      ListTile(
        title: Text('Mess Menu', style: TextStyle(color: Colors.white)),
        leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
      ),
      ListTile(
        title: Text('Internet Settings', style: TextStyle(color: Colors.white)),
        leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
      ),
      ListTile(
        title: Text('Contacts', style: TextStyle(color: Colors.white)),
        leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
      ),
      ListTile(
        title: Text('About', style: TextStyle(color: Colors.white)),
        leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
        onTap: () {
          //Navigator.pushNamed(context, '/first3');
        },
      ),
      ListTile(
        title: Text('Log Out', style: TextStyle(color: Colors.white)),
        leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
      ),
    ]),
  ),
);