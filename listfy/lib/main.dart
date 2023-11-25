import 'package:flutter/material.dart';
import 'package:listfy/views/DetailsAD.dart';
import 'package:listfy/views/HomePage.dart';

void main() {
  runApp(
    MaterialApp(
      home: DetailsAD(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan, useMaterial3: false),
    ),
  );
}
