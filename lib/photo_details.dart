import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoDetailsScreen extends StatefulWidget {

  final String image;
  final String title;
  final int id;

  const PhotoDetailsScreen({super.key, required this.image, required this.title, required this.id});


  @override
  State<PhotoDetailsScreen> createState() => _PhotoDetailsScreenState();
}

class _PhotoDetailsScreenState extends State<PhotoDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Photo Details',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
       //   crossAxisAlignment: CrossAxisAlignment.center,
       //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Container(
                height: 400,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          widget.image),
                      fit: BoxFit.fill),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Expanded(
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Text('ID: ${widget.id}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
