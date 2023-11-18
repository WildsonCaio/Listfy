import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  String name;
  // late

  // final

  Tabbar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      color: Colors.white,
      height: 50,
      child: Center(
        child: Text(name),
      ),
    );
  }
}
