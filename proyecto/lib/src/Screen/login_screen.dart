import 'package:flutter/material.dart';
import 'package:proyecto/src/Widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      child: Stack(children: <Widget>[
        Column(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                  width: double.infinity, height: 200, color: Colors.pink[700]),
            ),
            SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/Logo.png",
                  height: 150,
                  color: Colors.pink[700],
                )),
          ],
        ),
        cardLogin(context)
      ]),
    ));
  }
}
