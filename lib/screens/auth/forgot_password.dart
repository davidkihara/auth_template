import 'package:auth_template/constants.dart';
import 'package:auth_template/screens/auth/login.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor4,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .3,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: Image.asset("assets/images/logo.png"),
                    height: 100,
                    // width: 100,
                  ),
                  Container(
                    child: Text(
                      "Password Recovery",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Column(
                  children: [
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.,
                            children: [
                              // Divider(color: Colors.black),
                              Text("Enter your registered email below"),
                              // Divider(color: Colors.black),
                            ],
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: backgroundColor,
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            labelText: 'Email',
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()),
                              );
                            },
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  backgroundColor),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                "Send password recovery email",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
