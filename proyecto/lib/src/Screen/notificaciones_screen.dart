import 'package:flutter/material.dart';

class NotificacionesPage extends StatelessWidget {
  const NotificacionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink[700],
            title: Row(children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 40,
              ),
              const Text("Notificaciones"),
            ])),
        body: Center(
          child: Container(
            child: Opacity(
                opacity: 0.25, child: Icon(Icons.notifications, size: 120)),
          ),
        ),
      ),
    );
  }
}
