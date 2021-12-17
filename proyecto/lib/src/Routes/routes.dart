import 'package:flutter/material.dart';
import 'package:proyecto/src/Screen/favoritos_screen.dart';
import 'package:proyecto/src/Screen/help_screen.dart';
import 'package:proyecto/src/Screen/historial_screen.dart';
import 'package:proyecto/src/Screen/home_screen.dart';
import 'package:proyecto/src/Screen/login_screen.dart';
import 'package:proyecto/src/Screen/micuenta_screen.dart';
import 'package:proyecto/src/Screen/notificaciones_screen.dart';
import 'package:proyecto/src/Screen/register_screen.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    "/": (_) => const LoginPage(),
    "Register": (_) => const RegisterPage(),
    "HomePage": (_) => HomePage(),
    "favoritos": (_) => const FavoritosPage(),
    "help": (_) => const HelpPage(),
    "historial": (_) => const HistorialPage(),
    "micuenta": (_) => const MiCuentaPage(),
    "notificaciones": (_) => const NotificacionesPage(),
  };
}
