import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_snsunity/widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(100, (index) {
            return PostWidget();
          }),
          //for (int i = 0; i < 5; ++i) PostCard(),
        ),
      ),
    );
  }
}
