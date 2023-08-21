import 'package:flutter/material.dart';

class Centerpart extends StatelessWidget {
  const Centerpart({super.key, required this.myicon, required this.mytext});
  final IconData myicon;
  final Text mytext;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myicon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        mytext,
      ],
    );
  }
}
