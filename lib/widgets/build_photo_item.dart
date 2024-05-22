import 'package:flutter/material.dart';
import 'package:photo_gallery_app/photo.dart';

Widget buildPhotoItem(Photo photo) {
  return ListTile(
      subtitle: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      '${photo.image}')),
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            /*child: const Center(
                child: Text('600 x 600',
                  style: TextStyle(color: Colors.white, fontSize: 15),),
              ),*/
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '${photo.title}',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
        ],
      ));

}