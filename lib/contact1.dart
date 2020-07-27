import 'package:flutter/material.dart';


MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('home.',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                    fontFamily: 'Segoe UI',
                    color: Colors.white)),
            backgroundColor: Color(0xFF3C82FE),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text('GYMLKHANA',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          fontFamily: 'Segoe UI',
                          color: Colors.white)),
                ),
                Tab(
                  child: Text('TRANSPORT',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          fontFamily: 'Segoe UI',
                          color: Colors.white)),
                ),
                Tab(
                  child: Text('EMERGENCY',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          fontFamily: 'Segoe UI',
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            ListView(children: [
              Column(children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    height: 150.0,
                    width: 340.0,
                    margin: const EdgeInsets.all(7.0),
                    // color:Color(0xFFFECA05),
                    child: Material(
                        color: Color(0xFFFECA05),
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(13.0, 10.0, 0.0, 0.0),
                                child: Text('Gymkhana',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 27.0,
                                        fontFamily: 'Segoe UI',
                                        color: Colors.black)),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(13.0, 10.0, 0.0, 0.0),
                                child: Text('EXECUTIVE SENATE CLUBS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
                                        fontFamily: 'Segoe UI',
                                        color: Colors.black)),
                              ),
                            ]))),
                SizedBox(
                  height: 20.0,
                ),
                ListTile(
                    title: Text('Executive Wing',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 27.0,
                            fontFamily: 'Segoe UI',
                            color: Colors.grey[900])),
                    subtitle: Text('Student Executive for the Institute',
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
                          image: AssetImage('images/bus.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ])
            ]),
            ListView(children: [
              Column(children: [
                Container(
                    height: 150.0,
                    width: 320.0,
                    margin: const EdgeInsets.all(7.0),
                    // color:Color(0xFFFECA05),
                    child: Material(
                        color: Color(0xFFFECA05),
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(13.0, 10.0, 0.0, 0.0),
                                child: Text('Transport',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 27.0,
                                        fontFamily: 'Segoe UI',
                                        color: Colors.black)),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(13.0, 10.0, 0.0, 0.0),
                                child: Text('EXECUTIVE SENATE CLUBS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
                                        fontFamily: 'Segoe UI',
                                        color: Colors.black)),
                              )
                            ]))),
                SizedBox(
                  height: 20.0,
                ),
                ListTile(
                    title: Text('Executive Wing',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 27.0,
                            fontFamily: 'Segoe UI',
                            color: Colors.grey[900])),
                    subtitle: Text('Student Executive for the Institute',
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
                          image: AssetImage('images/bus.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ])
            ]),
            ListView(children: [
              Column(children: [
                Container(
                    height: 150.0,
                    width: 320.0,
                    margin: const EdgeInsets.all(7.0),
                    //color:Color(0xFFFECA05),
                    child: Material(
                        color: Color(0xFFFECA05),
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(13.0, 10.0, 0.0, 0.0),
                                child: Text('Emergeny',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 27.0,
                                        fontFamily: 'Segoe UI',
                                        color: Colors.black)),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(13.0, 10.0, 0.0, 0.0),
                                child: Text('',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
                                        fontFamily: 'Segoe UI',
                                        color: Colors.black)),
                              ),
                            ]))),
                SizedBox(
                  height: 20.0,
                ),
                Card(
                  elevation: 3.0,
                  child: Container(
                    height: 100.0,
                    margin: const EdgeInsets.all(10.0),
                    child: ListTile(
                        title: Text('Security',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 27.0,
                                fontFamily: 'Segoe UI',
                                color: Colors.grey[900])),
                        subtitle: Text('+91 9085082423',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Segoe UI',
                                color: Colors.grey[700])),
                        leading: Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                            image: new DecorationImage(
                              image: AssetImage('images/bus.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  elevation: 3.0,
                  child: Container(
                    height: 100.0,
                    margin: const EdgeInsets.all(10.0),
                    child: ListTile(
                        title: Text('Hospital',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 27.0,
                                fontFamily: 'Segoe UI',
                                color: Colors.grey[900])),
                        subtitle: Text('+91 9435107501',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Segoe UI',
                                color: Colors.grey[700])),
                        leading: Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                            image: new DecorationImage(
                              image: AssetImage('images/bus.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ),
                ),
              ])
            ]),
          ])),
    )),