import 'package:flutter/material.dart';
import 'package:widgets_revision/simple_widgets/images.dart';

class HeroImage extends StatefulWidget {
  const HeroImage({super.key});

  @override
  State<HeroImage> createState() => _HeroImageState();
}

class _HeroImageState extends State<HeroImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Image"), centerTitle: true),
      body: Container(
        width: double.infinity,
        height: 400,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ImagesClass()),
            );
          },
          child: Hero(
            tag: "my_pic",
            child: Image.asset("images/pic.png", fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
