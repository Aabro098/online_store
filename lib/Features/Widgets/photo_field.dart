import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:online_store/Constants/images.dart';

class CircularPhotoField extends StatefulWidget {
  const CircularPhotoField({super.key});

  @override
  CircularPhotoFieldState createState() => CircularPhotoFieldState();
}

class CircularPhotoFieldState extends State<CircularPhotoField> {
  XFile? _image;

  Future<void> _pickImage() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = pickedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _pickImage,
        child: CircleAvatar(
          radius: 70, 
          backgroundImage: _image != null
              ? FileImage(File(_image!.path))
              : const AssetImage(AppImages.defaultprofile) as ImageProvider,
        ),
      ),
    );
  }
}
