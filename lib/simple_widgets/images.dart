import 'package:flutter/material.dart';
import 'package:widgets_revision/simple_widgets/hero_image.dart';

class ImagesClass extends StatefulWidget {
  const ImagesClass({super.key});

  @override
  State<ImagesClass> createState() => _ImagesState();
}

class _ImagesState extends State<ImagesClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HeroImage()),
              );
            },
            child: Hero(
              tag: "my_pic",
              child: Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("images/pic.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
