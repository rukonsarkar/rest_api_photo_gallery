import 'package:flutter/material.dart';
import 'package:photo_gallery_app/photo.dart';

Widget buildPhotoItem(Photo photo) {
  return ListTile(
      subtitle: Expanded(
    child: Row(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage('${photo.image}')),
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          /*child: const Center(
                  child: Text('600 x 600',
                    style: TextStyle(color: Colors.white, fontSize: 15),),
                ),*/
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '${photo.title}',
              style: TextStyle(color: Colors.black, fontSize: 18),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    ),
  ));
}
