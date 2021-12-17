import 'package:flutter/material.dart';
import 'package:proyecto/src/Widgets/Home/search.dart';
import 'package:proyecto/src/providers/drawer_provider.dart';
import 'package:proyecto/src/utils/icono_string_util.dart';

var c;

Widget drawerHome(BuildContext context) {
  c = context;
  return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.pink[700]),
      child: Drawer(
        child: list(context),
      ));
}

Widget list(BuildContext context) {
  return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data, context));
      });
}

List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
  final List<Widget> opciones = [];

  opciones.add(UserAccountsDrawerHeader(
    margin: EdgeInsets.only(bottom: 8, top: 30),
    currentAccountPicture: Icon(
      Icons.account_circle_outlined,
      size: 100,
    ),
    currentAccountPictureSize: Size.square(100),
    accountEmail: Text("puga.garcia.19096@itsmante.edu.mx"),
    accountName: Text("Hector"),
    decoration: BoxDecoration(color: Colors.pink[700]),
  ));
  opciones.add(Divider(
    thickness: 2,
    color: Colors.black,
  ));

  for (var opt in data!) {
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: getIcon(opt['icon']),
      onTap: () {
        if ("home" == opt['ruta']) {
          Navigator.pop(context);
        } else if ("buscar" == opt['ruta']) {
          showSearch(context: c, delegate: Search());
        } else if ("cerrar" == opt['ruta']) {
        } else {
          Navigator.pushNamed(c, opt['ruta']);
        }
      },
    );
    opciones.add(widgetTemp);
  }

  return opciones;
}
