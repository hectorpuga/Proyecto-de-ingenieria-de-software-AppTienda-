import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proyecto/src/Widgets/Home/appbar_home.dart';
import 'package:proyecto/src/Widgets/Home/drawer_home.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> _listaNumero = [];
  bool _isLoading = false;
  ScrollController _scrollController = new ScrollController();
  int _ultimoItem = 0;

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: drawerHome(context),
            appBar: appBarHome(context),
            body: Stack(children: <Widget>[_crearLista(), _crearLoading()])));
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina1,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumero.length,
          itemBuilder: (context, index) {
            final imagen = _listaNumero[index];
            return _cardTipo2(imagen);
          }),
    );
  }

  Widget _cardTipo2(final imagen) {
    final card = Container(
        color: Colors.pink[700],
        //clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            Container(
                color: Colors.pink[700],
                padding: const EdgeInsets.all(10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Nombre de el producto")])),
            FadeInImage(
              placeholder: AssetImage('assets/17.1 jar-loading.gif'),
              image:
                  NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
              fadeInDuration: Duration(milliseconds: 150),
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
                color: Colors.pink[700],
                padding: const EdgeInsets.all(10.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text("Detalles"),
                  SizedBox(width: 100),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_border)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.comment_rounded)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send))
                ]))
          ],
        ));

    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
        child: ClipRRect(
          child: card,
          borderRadius: BorderRadius.circular(30.0),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 10.0))
            ]));
  }

  Future<Timer> obtenerPagina1() async {
    final duration = new Duration(seconds: 2);
    await new Timer(duration, () {
      _listaNumero.clear();
      _ultimoItem++;
      _agregar10();
    });
    return Future.delayed(duration);
  }

  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listaNumero.add(_ultimoItem);
      setState(() {});
    }
  }

  Future<Timer> _fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    return Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _agregar10();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularProgressIndicator()],
            ),
            SizedBox(
              height: 15.0,
            )
          ]);
    } else {
      return Container();
    }
  }
}
