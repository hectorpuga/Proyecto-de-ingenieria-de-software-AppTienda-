import 'package:flutter/material.dart';
import 'package:proyecto/src/Widgets/Home/search.dart';

PreferredSize appBarHome(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(55),
    child: AppBar(
      backgroundColor: Colors.pink[700],
      title: Padding(
        padding: EdgeInsets.only(right: 20),
        child: SizedBox(
          width: double.infinity,
          height: 30,
          child: TextField(
              enableInteractiveSelection: false,
              onTap: () {
                FocusScope.of(context).requestFocus(new FocusNode());
                showSearch(context: context, delegate: Search());
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: "Buscar",
                contentPadding: const EdgeInsets.only(top: 2, left: 40),
                hintStyle: const TextStyle(fontSize: 15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                    )),
              )),
        ),
      ),
    ),
  );
}
