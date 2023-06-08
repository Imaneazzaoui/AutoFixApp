import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final Function()? onTap;
  final BoxDecoration decoration;
  const SquareTile({
    super.key,
    required this.imagePath,
    required this.onTap,
    required this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      padding: EdgeInsets.all(20),
      decoration: decoration,
      child: Image.asset(
        imagePath,
        height: 40,
      ),
      ),
    );
  }
}