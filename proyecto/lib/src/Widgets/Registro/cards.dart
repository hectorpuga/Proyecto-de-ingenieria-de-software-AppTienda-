import 'package:flutter/material.dart';
import 'package:proyecto/src/Widgets/Registro/buttons.dart';
import 'package:proyecto/src/Widgets/Registro/textfield.dart';

class cardRegister extends StatefulWidget {
  const cardRegister({Key? key}) : super(key: key);

  @override
  _cardRegisterState createState() => _cardRegisterState();
}

class _cardRegisterState extends State<cardRegister> {
  bool v = false;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 50),
      child: Center(
        child: SingleChildScrollView(
          child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 260, bottom: 20),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  const Text("Create an accout",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textFieldRegister(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                          value: v,
                          onChanged: (a) {
                            setState(() {});
                            v = a!;
                          }),
                      Text("Aceptar Terminos y Condiciones")
                    ],
                  ),
                  botonRegister(context),
                ]),
              )),
        ),
      ),
    );
  }
}
