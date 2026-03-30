import 'package:flutter/material.dart';

class ImagesClass extends StatefulWidget {
  const ImagesClass({super.key});

  @override
  State<ImagesClass> createState() => _ImagesState();
}

class _ImagesState extends State<ImagesClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            "https://as2.ftcdn.net/v2/jpg/02/92/95/17/1000_F_292951705_zv47wnXkjzHzSouYLpYcNgTOOosDv1ml.jpg",
            errorBuilder: (context, error, stackTrace) {
              return const Center(
                child: Icon(Icons.error, color: Colors.red, size: 40),
              );
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return CircularProgressIndicator(color: Colors.blue);
            },
          ),
        ],
      ),
    );
  }
}
