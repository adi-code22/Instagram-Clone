import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  List<String> images = [
    "assets/13.png",
    "assets/19.png",
    "assets/18.png",
    "assets/19.png",
    "assets/back.jfif",
    "assets/background.jfif",
    "assets/bath.webp",
    "assets/dog.jfif",
    "assets/3.png",
    "assets/6.png",
    "assets/9.png",
    "assets/12.png",
    "assets/7.png",
    "assets/20.png",
    "assets/25.png",
    "assets/26.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                label: "Library", icon: Icon(Icons.library_add)),
            BottomNavigationBarItem(label: "Photo", icon: Icon(Icons.photo)),
            BottomNavigationBarItem(
                label: "Videos", icon: Icon(Icons.video_call)),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        "Recents",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      TextButton(
                        child: Text(
                          "Next",
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 0.45.sh,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/pic2.PNG")))),
                Container(
                  height: 0.4.sh,
                  width: 1.sw,
                  child: GridView.builder(
                    physics: new BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(images[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
