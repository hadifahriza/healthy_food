import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white70,
        ),
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Icon(
              Icons.work,
              size: 100,
              color: Colors.blue,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                labelText: 'Project Name',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your project name.';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Description',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your project name.';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Location',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your project name.';
                }
                return null;
              },
            ),
            RaisedButton(
              child: new Text('Get Start'),
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      )
    );
  }
}