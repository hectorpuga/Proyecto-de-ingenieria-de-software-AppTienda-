import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'person': Icons.person,
  'apellidom': Icons.folder_open,
  'correo': Icons.donut_large,
  'edad': Icons.input,
  'home': Icons.home,
  'buscar': Icons.search,
  'notificaciones': Icons.notifications,
  'favoritos': Icons.favorite,
  'historial': Icons.history,
  'mi cuenta': Icons.account_circle,
  'help': Icons.help,
  'cerrar sesion': Icons.exit_to_app
};
Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: Colors.black,
    size: 35,
  );
}
