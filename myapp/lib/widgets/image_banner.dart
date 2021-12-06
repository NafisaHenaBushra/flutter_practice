import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String assetPath;
  final double height;

  ImageBanner({required this.assetPath, this.height = 600.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: height),
        decoration: BoxDecoration(color: Colors.white),
        child: Image.asset(
          assetPath,
          fit: BoxFit.fitWidth,
        ));
  }
}
