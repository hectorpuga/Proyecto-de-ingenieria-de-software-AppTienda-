import 'package:flutter/material.dart';
import 'package:proyecto/src/Routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        initialRoute: "/",
        routes: getRoutes(),
        debugShowCheckedModeBanner: false);
  }
}
