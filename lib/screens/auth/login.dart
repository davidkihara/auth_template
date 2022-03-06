import 'package:auth_template/constants.dart';
import 'package:auth_template/screens/auth/forgot_password.dart';
import 'package:auth_template/screens/home/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
                      "Login",
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
                              Text("Fill in your details below"),
                              // Divider(color: Colors.black),
                            ],
                          ),
                        ),
                        TextFormField(
                          controller: _emailController,
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
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: backgroundColor,
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            labelText: 'Password',
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Homecreen()),
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
                                "Login",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPassword()),
                              );
                            },
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
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
                                "Forgot Password?",
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
