import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    title: Container(
      height: 30.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://api.databasedonasi.id/logo-with-title.png",
          ),
        ),
      ),
    ),
  );
}
