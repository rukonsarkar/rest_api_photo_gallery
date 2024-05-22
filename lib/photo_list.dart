import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:photo_gallery_app/photo.dart';
import 'package:photo_gallery_app/widgets/build_photo_item.dart';

class PhotoListScreen extends StatefulWidget {
  const PhotoListScreen({super.key});

  @override
  State<PhotoListScreen> createState() => _PhotoListScreenState();
}

class _PhotoListScreenState extends State<PhotoListScreen> {
  List<Photo> photoList = [];

  @override
  void initState() {
    super.initState();
    _getPhotoList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Photo Gallery App',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return buildPhotoItem(context, photoList[index]);
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: photoList.length));
  }

  Future<void> _getPhotoList() async {

    setState(() {});

    String photoListUrl = 'https://jsonplaceholder.typicode.com/photos';
    Uri uri = Uri.parse(photoListUrl);

    Response response = await get(uri);

    int result = response.statusCode;

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('$result')));

    if (response.statusCode == 200) {
      // data decode
      final decodedData = jsonDecode(response.body);

      final imageList = decodedData;

      for (Map<String, dynamic> img in imageList) {
        Photo photo = Photo(
            id: img['id'] ?? '',
            title: img['title'] ?? '',
            image: img['thumbnailUrl'] ?? '');
        photoList.add(photo);
      }

    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Something went wrong')));
    }
    setState(() {});
  }


}

