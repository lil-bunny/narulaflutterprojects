//Scaffold

import 'package:flutter/material.dart';

//Center
//Column Widget
//Container Widget
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var img =
        'https://upload.wikimedia.org/wikipedia/en/a/a3/Lordvoldemort.jpg';
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text(
            'Deb',
            style: TextStyle(color: Colors.amber),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is a container with a color',
                style: TextStyle(fontSize: 30),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(img)),
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Text('Hi, I am Voldemort',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.w600)),
              Text(
                'How are you??',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 70),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              )
            ],
          ),
        ));
  }
}

//
