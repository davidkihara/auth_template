import 'package:auth_template/constants.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        actions: [
          IconButton(
            tooltip: "Logout",
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.red,
              semanticLabel: "Logout",
            ),
          ),
        ],
      ),
    );
  }
}
