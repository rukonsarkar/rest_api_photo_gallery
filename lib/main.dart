import 'package:flutter/material.dart';
import 'package:photo_gallery_app/photo_details.dart';
import 'package:photo_gallery_app/photo_list.dart';

void main(){
  return runApp(const PhotoApp());
}

class PhotoApp extends StatelessWidget{
  const PhotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhotoListScreen(),
    );
  }
}
