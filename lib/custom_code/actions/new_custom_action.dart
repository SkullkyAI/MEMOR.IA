// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction() async {
  // CHANGE THE IMAGE FROM ABOVE WHEN ONE OF THE BUTTONS IS PRESSED
// Define a list of images to be displayed
  List<String> images = [
    "https://images.unsplash.com/photo-1668638502334-868f5775607c?w=1280&h=720",
    "https://images.unsplash.com/photo-1484688493527-670f98f9b195?w=1280&h=720",
  ];

  // Generate a random index to select a new image
  int newIndex = Random().nextInt(images.length);

  // Fetch the new image from the internet
  var response = await http.get(Uri.parse(images[newIndex]));
  var bytes = response.bodyBytes;

  // Update the image displayed on the screen
  setState(() {
    _image = Image.memory(bytes);
  });
}
