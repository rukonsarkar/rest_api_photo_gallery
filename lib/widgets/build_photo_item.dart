import 'package:flutter/material.dart';
import 'package:photo_gallery_app/photo.dart';
import 'package:photo_gallery_app/photo_details.dart';

Widget buildPhotoItem(BuildContext context, Photo photo) {
  return InkWell(onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoDetailsScreen(image: photo.image, title: photo.title, id: photo.id,),));
  },
  child: ListTile(
      subtitle: Expanded(
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('${photo.image}'), fit: BoxFit.fill),
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
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
      )));


}
