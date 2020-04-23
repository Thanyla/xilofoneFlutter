import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      body: Center(
        child: Image(
          image: NetworkImage("https://www.pngkit.com/png/detail/344-3448185_diamantes-rosa-png-diamante-pink-png.png"),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF1744),
        title: Text("I'm rich"),
      ),
    ),
      debugShowCheckedModeBanner: false
  )
);

