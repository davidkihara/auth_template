import 'package:auth_template/constants.dart';
import 'package:auth_template/screens/auth/register.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  // gradient: LinearGradient(
                  //     colors: [backgroundColor2, backgroundColor],
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter),
                ),
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(backgroundColor4),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
