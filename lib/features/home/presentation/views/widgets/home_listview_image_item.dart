import 'package:booklyapp/core/assets.dart';
import 'package:flutter/material.dart';

class HomeListViewImageItem extends StatelessWidget {
  const HomeListViewImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetsPath.testBook))),
      ),
    );
  }
}