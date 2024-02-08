import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class PhotoUploadField extends StatefulWidget {
  @override
  _PhotoUploadFieldState createState() => _PhotoUploadFieldState();
}

class _PhotoUploadFieldState extends State<PhotoUploadField> {
  List<File> _images = [];

  // Function to handle image selection from gallery
  Future<void> _pickImages() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        // Add the selected image to the list
        _images.add(File(pickedImage.path));
      });
    }
  }

  // Function to request storage permission
  Future<void> _requestPermission() async {
    final status = await Permission.storage.request();
    if (status.isDenied) {
      // Handle denied permission
      print('Permission denied');
    }
  }

  @override
  void initState() {
    super.initState();
    _requestPermission();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImages,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), // Border color
          borderRadius: BorderRadius.circular(10), // Border radius
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _images.isNotEmpty
                ? Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.file(
                      _images[index],
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                  );
                },
              ),
            )
                : Icon(Icons.photo_album, size: 50, color: Colors.grey),
            SizedBox(height: 8),
            Icon(Icons.add, size: 50, color: Colors.grey), // Icon to add more photos
          ],
        ),
      ),
    );
  }
}
