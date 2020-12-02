import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'home.dart';
import 'project.dart';
import 'account.dart';

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Project(),
    Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 40, right: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue,
                    Colors.lightBlueAccent,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: FlatButton(
                          onPressed: () => {},
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                              Text(
                                'Pengingat',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topCenter,
                        child: FlatButton(
                          onPressed: () => {},
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              Text(
                                'Beranda',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topCenter,
                        child: FlatButton(
                          onPressed: () => {},
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.chat,
                                color: Colors.white,
                              ),
                              Text(
                                'Konsultasi',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/delivery.png',
                          fit: BoxFit.fill,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SlidingUpPanel(
            borderRadius: BorderRadius.circular(15),
            maxHeight: 600,
            minHeight: 220,
            panel: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,),
            title: Text('Rekomendasi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            title: Text('Pesan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Akun'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}