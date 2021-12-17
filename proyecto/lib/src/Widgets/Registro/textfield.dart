import 'package:flutter/material.dart';
import 'package:proyecto/src/providers/menu_provider.dart';

Widget textFieldRegister() {
  return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return Column(children: _listaItems(snapshot.data, context));
      });
}

List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
  final List<Widget> opciones = [];

  for (var opt in data!) {
    final widgetTemp = SizedBox(
      width: 200,
      height: 30,
      child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: opt['texto'],
            contentPadding: const EdgeInsets.only(top: 2),
            hintStyle: const TextStyle(fontSize: 15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                )),
          )),
    );
    opciones
      ..add(const SizedBox(height: 15))
      ..add(widgetTemp);
  }

  return opciones;
}
