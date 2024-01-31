import "package:flutter/material.dart";

class PosterWidget extends StatelessWidget {
  const PosterWidget(
      {super.key,
      required this.heightRatio,
      required this.posterImage,
      required this.widthRatio});
  final double heightRatio;
  final double widthRatio;
  final String posterImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height:  heightRatio,
        child: Image.asset(
          posterImage,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ));
  }
}
