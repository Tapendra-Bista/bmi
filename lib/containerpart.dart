import 'package:flutter/material.dart';

class Containerbox extends StatelessWidget {
  const Containerbox({
    super.key,
    required this.clr,
    required this.childcon,
  });
  final Color clr;
  final Widget childcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 203,
        width: 150,
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(10),
        ),
        child: childcon,
      ),
    );
  }
}
