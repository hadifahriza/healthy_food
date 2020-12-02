import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white70,
        ),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 100,
              color: Colors.blue,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'ID : hadifahriza',
                    style: Theme.of(context)
                        .textTheme
                        .headline5,
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hadi Fahriza',
                    style: Theme.of(context)
                        .textTheme
                        .headline6,
                  ),
                ],
              ),
            ),
          ],
        ),
        margin: const EdgeInsets.all(16.0),
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.topCenter,
      ),
    );
  }
}