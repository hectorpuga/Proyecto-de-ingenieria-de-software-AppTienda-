import 'package:flutter/material.dart';
import 'package:proyecto/src/Widgets/widgets.dart';

Widget cardLogin(BuildContext context) {
  return Transform.translate(
    offset: const Offset(0, 50),
    child: Center(
      child: SingleChildScrollView(
        child: Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(
                left: 20, right: 20, top: 260, bottom: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                const Text("Inicio Sesión",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                textFieldLogin(),
                const SizedBox(height: 10),
                botonLogin(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("¿No estas registrado?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "Register");
                        },
                        child: const Text("Registrarse"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          size: 35,
                          color: Colors.blue[900],
                        )),
                    Image.asset(
                      "assets/twitter.png",
                      height: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/google.png",
                      height: 35,
                    )
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text("Terminos y condiciones"))
              ]),
            )),
      ),
    ),
  );
}
