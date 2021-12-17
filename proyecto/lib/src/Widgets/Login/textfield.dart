import 'package:flutter/material.dart';

Widget textFieldLogin() {
  const tamLetra = 15.0;
  return Column(
    children: <Widget>[
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 200,
        height: 30,
        child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "UserName",
              contentPadding: const EdgeInsets.only(top: 2, left: 40),
              hintStyle: const TextStyle(fontSize: tamLetra),
              prefixIcon: const Icon(Icons.person, color: Colors.black),
              hintTextDirection: TextDirection.ltr,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                      color: Colors.purple.shade300, style: BorderStyle.solid)),
            )),
      ),
      const SizedBox(
        height: 15,
      ),
      SizedBox(
        width: 200,
        height: 30,
        child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: "Password",
              contentPadding: const EdgeInsets.only(top: 2, left: 40),
              hintStyle: const TextStyle(fontSize: tamLetra),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                  )),
            )),
      ),
    ],
  );
}
