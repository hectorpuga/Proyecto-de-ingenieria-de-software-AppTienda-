import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget {
  const FavoritosPage({Key? key}) : super(key: key);

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
              const Text("Favoritos"),
            ])),
        body: Center(
          child: Container(
            child: Opacity(
                opacity: 0.25, child: Icon(Icons.favorite_sharp, size: 120)),
          ),
        ),
      ),
    );
  }
}
