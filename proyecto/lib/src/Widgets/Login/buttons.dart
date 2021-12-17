import 'package:flutter/material.dart';

Widget botonLogin(BuildContext context) {
  return SizedBox(
    width: 100,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.pink[700], shadowColor: Colors.pink[700]),
      onPressed: () {
        Navigator.pushNamed(context, "HomePage");
      },
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ]),
    ),
  );
}
