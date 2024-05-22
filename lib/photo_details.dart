import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PhotoDetailsScreen extends StatefulWidget {
  final String image;
  final String title;
  final int id;

  const PhotoDetailsScreen(
      {super.key, required this.image, required this.title, required this.id});

  @override
  State<PhotoDetailsScreen> createState() => _PhotoDetailsScreenState();
}

class _PhotoDetailsScreenState extends State<PhotoDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait){
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Photo Details',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Container(
                    height: 400,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.image), fit: BoxFit.fill),
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
             //   const SizedBox(height: 20),
             //   Image.network(widget.image),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Expanded(
                    child: Text(
                      widget.title,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text('ID: ${widget.id}',
                    style: const TextStyle(fontSize: 18, color: Colors.black)),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Photo Details',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.image), fit: BoxFit.fill),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Expanded(
                      child: Text(
                        widget.title,
                        style: const TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text('ID: ${widget.id}',
                      style: const TextStyle(fontSize: 18, color: Colors.black)),
                ],
                ),
              )

            ],
          ),
        ),
      );
    }

  }
}
