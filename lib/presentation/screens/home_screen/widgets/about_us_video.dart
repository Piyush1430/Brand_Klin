import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class AboutUsVideoPoster extends StatelessWidget {
  const AboutUsVideoPoster(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240 * heightRatio,
      child: Stack(
        children: [
          Image.asset("assets/images/mercedez_car_poster.png",
              fit: BoxFit.cover),
          Padding(
            padding:
                EdgeInsets.only(top: 90 * heightRatio, left: 100 * widthRatio),
            child: Text(
              'YouTube Creative',
              style: GoogleFonts.blackOpsOne(
                color: Colors.white,
                fontSize: 28 * heightRatio,
                fontWeight: FontWeight.w800,
                height: 0,
                letterSpacing: -0.16,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 130 * heightRatio, left: 100 * widthRatio),
            child: Row(
              children: [
                Container(
                  width: 35 * widthRatio,
                  height: 35 * heightRatio,
                  alignment: Alignment.center,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFEB0929),
                    shape: CircleBorder(),
                  ),
                  child: Image.asset(
                    "assets/images/pause.png",
                    fit: BoxFit.contain,
                    scale: 3.8 * heightRatio,
                  ),
                ),
                SizedBox(width: 7 * widthRatio),
                Text(
                  'About Us Video',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20 * heightRatio,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 180 * heightRatio, left: 150 * widthRatio),
            child: Image.asset("assets/images/dot.png" ,scale: 2.8 * heightRatio,)
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 120 * heightRatio, left: 270 * widthRatio),
            child: Image.asset("assets/images/pic1.png" ,scale: 5.2 * heightRatio,)
          ),
        ],
      ),
    );
  }
}
