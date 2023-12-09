import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  String label;
  int? height;

  InputText({super.key, required this.label, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextField(
        maxLines: height,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: label),
      ),
    );
  }
}
