import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back')),
          title: Text('Screen 2')),
    );
  }
}
