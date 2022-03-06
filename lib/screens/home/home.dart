import 'package:auth_template/screens/settings/settings.dart';
import 'package:flutter/material.dart';

class Homecreen extends StatefulWidget {
  const Homecreen({Key? key}) : super(key: key);

  @override
  _HomecreenState createState() => _HomecreenState();
}

class _HomecreenState extends State<Homecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
            child: Text("Settings")),
      ),
    );
  }
}
