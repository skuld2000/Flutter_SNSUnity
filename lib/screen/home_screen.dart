import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_snsunity/widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(10, (index) {
          return PostWidget();
        }),
      ),
    );
  }
}
