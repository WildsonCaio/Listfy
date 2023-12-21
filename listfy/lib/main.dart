import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listfy/views/CreateAd.dart';
import 'package:listfy/views/DetailsAD.dart';
import 'package:listfy/views/HomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: const CreateAd(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          useMaterial3: false,
          textTheme: GoogleFonts.aboretoTextTheme()),
    ),
  );
}
