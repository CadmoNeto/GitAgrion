import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImageCarousel extends StatelessWidget {
  final double height;
  final double width;
  final List<Widget> photos;

  ImageCarousel({this.height, this.width, this.photos});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Carousel(
        dotSize: 4,
        images: photos,
      ),
    );
  }
}
