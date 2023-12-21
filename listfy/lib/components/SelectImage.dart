import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectImage extends StatefulWidget {
  var imageController;
  Function? updateImage;

  SelectImage({super.key, required this.imageController, this.updateImage});

  @override
  State<SelectImage> createState() => _SelectImageState();
}

class _SelectImageState extends State<SelectImage> {
  // TODO:RESOLVER PORBLEMA DE CARREGAMENTO DE IMAGE
  loadImage() async {
    var picker = ImagePicker();
    var selectedImage = await picker.pickImage(source: ImageSource.camera);

    widget.updateImage!(selectedImage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 4,
        height: 100,
        color: Colors.grey,
        child: widget.imageController == null
            ? IconButton(
                onPressed: loadImage,
                icon: const Icon(Icons.add_a_photo),
              )
            : Image.file(
                File(widget.imageController.path),
                fit: BoxFit.cover,
              ));
  }
}
