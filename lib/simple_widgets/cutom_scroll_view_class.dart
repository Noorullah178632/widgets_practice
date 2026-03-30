import 'package:flutter/material.dart';

class CutomScrollViewClass extends StatefulWidget {
  const CutomScrollViewClass({super.key});

  @override
  State<CutomScrollViewClass> createState() => _CutomScrollViewClassState();
}

class _CutomScrollViewClassState extends State<CutomScrollViewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //scroll app bar
          SliverAppBar(
            toolbarHeight: 200,
            backgroundColor: Colors.blue,

            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Custom Scroll view ",
                style: TextStyle(color: Colors.white),
              ),
              background: Image.asset("images/pic.png", fit: BoxFit.cover),
            ),
          ),

          //scroll listview
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                leading: CircleAvatar(),
                title: Text("data $index"),
              );
            }, childCount: 20),
          ),
        ],
      ),
    );
  }
}
