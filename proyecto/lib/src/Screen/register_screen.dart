import 'package:flutter/material.dart';
import 'package:proyecto/src/Widgets/Login/decorationes.dart';
import 'package:proyecto/src/Widgets/Registro/cards.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
            Container(
                height: 140,
                width: 140,
                child: const Icon(
                  Icons.add_a_photo,
                  size: 50,
                ),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.pink[700])),
          ],
        ),
        cardRegister()
      ]),
    ));
  }
}
