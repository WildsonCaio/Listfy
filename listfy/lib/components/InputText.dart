import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  String label;
  int? height;
  String? inputController;
  Function? updateController;

  InputText({
    super.key,
    required this.label,
    this.height,
    this.inputController,
    this.updateController,
  });

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextField(
        onChanged: (value) {
          widget.updateController!(value);
        },
        maxLines: widget.height,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: widget.label),
      ),
    );
  }
}
