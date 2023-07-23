import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:testapp2/view/screen2.dart';

//Stack Widget

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var img =
        'https://webappstatic.buzzfeed.com/static/2017-08/9/6/asset/buzzfeed-prod-fastlane-02/anigif_sub-buzz-13286-1502274465-2.gif';
    String sayMyName(String name, {coupon = ''}) {
      return name;
    }

    void navigateToPage() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MyWidget2(),
      ));
    }

    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              'Stacking containers',
              style: TextStyle(fontSize: 30),
            ),
            Stack(
              children: [
                Container(
                  height: height * 0.2,
                  width: width * 0.5,
                  color: Colors.pink,
                ),
                Container(
                  height: height * 0.2 / 1.5,
                  width: width * 0.5 / 1.5,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: height * 0.2 / 1.8,
                  width: width * 0.5 / 1.8,
                  color: Colors.amber,
                )
              ],
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Text(
              'Circle avatar',
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(img),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 100,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 214, 34, 25),
                  child: Text('1'),
                )
              ],
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber)),
                onPressed: () {
                  navigateToPage();
                  print(sayMyName('Deb', coupon: 'nickname'));
                },
                child: Text('Click me'))
          ],
        ),
      ),
    );
  }
}
