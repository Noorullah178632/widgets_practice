import 'package:flutter/material.dart';

class CutomScrollViewClass extends StatefulWidget {
  const CutomScrollViewClass({super.key});

  @override
  State<CutomScrollViewClass> createState() => _CutomScrollViewClassState();
}

class _CutomScrollViewClassState extends State<CutomScrollViewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomScrollView());
  }
}
