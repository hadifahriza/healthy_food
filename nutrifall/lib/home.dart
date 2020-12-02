import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white70,
      ),
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      alignment: Alignment.topCenter,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                mainAxisSpacing: 8.0,
                children: <Widget>[
                  MenuIcon(
                    icon: Icons.calendar_today,
                    iconColor: Colors.amber[800],
                    label: 'Atur Pola',
                  ),
                  MenuIcon(
                    icon: Icons.info,
                    iconColor: Colors.amber[800],
                    label: 'Informasi',
                  ),
                  MenuIcon(
                    icon: Icons.restaurant,
                    iconColor: Colors.amber[800],
                    label: 'Rumah Makan',
                  ),
                  MenuIcon(
                    icon: Icons.apps,
                    iconColor: Colors.amber[800],
                    label: 'Mode Diet',
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}

class MenuIcon extends StatelessWidget {

  final IconData icon;
  final Color iconColor;
  final String label;

  MenuIcon({
    this.icon,
    this.iconColor,
    this.label
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: iconColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Icon(icon, color: iconColor),
            ),
          ),
          SizedBox(height: 10.0),
          Text(label)
        ],
      ),
    );
  }
}