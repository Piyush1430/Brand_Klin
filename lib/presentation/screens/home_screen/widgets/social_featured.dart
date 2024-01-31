import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:rathamansion/global_variable/theme.dart";

class SocailMediaHandels extends StatelessWidget {
  const SocailMediaHandels(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260 * heightRatio,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: 10 * widthRatio, top: 40 * heightRatio),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BRAND',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 30.11 * heightRatio,
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 1.34,
                  ),
                ),
                Text(
                  'KILN',
                  style: GoogleFonts.lato(
                    foreground: Paint()..shader = AppTheme.linerGradientShader,
                    fontSize: 30.11 * heightRatio,
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 1.34,
                  ),
                ),
                socialMediaImages(imageUrl: "assets/images/email.png"),
                socialMediaImages(imageUrl: "assets/images/facebook.png"),
                socialMediaImages(imageUrl: "assets/images/yt.png"),
                socialMediaImages(imageUrl: "assets/images/twitter.png"),
                socialMediaImages(imageUrl: "assets/images/insta.png"),
              ],
            ),
          ),
          SizedBox(height: 20 * heightRatio),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/c-logo.png", scale: 3.8 * heightRatio),
              Text(
                '2023',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 28 * heightRatio,
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.28,
                ),
              ),
              SizedBox(width: 7 * widthRatio),
            ],
          ),
          SizedBox(height: 40 * heightRatio),
          Divider(
            color: const Color(0xFF636363),
            thickness: 3.5 * widthRatio,
          ),
          Padding(
            padding: EdgeInsets.all(7 * heightRatio),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Powered by',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 21 * heightRatio,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(width: 4 * widthRatio),
                Text(
                  'BRAND',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 19 * heightRatio,
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 0.6,
                  ),
                ),
                Text(
                  'KILN',
                  style: GoogleFonts.lato(
                    foreground: Paint()..shader = AppTheme.linerGradientShader,
                    fontSize: 19 * heightRatio,
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget socialMediaImages({
    required String imageUrl,
  }) {
    return Container(
      width: 44 * widthRatio,
      height: 44 * heightRatio,
      decoration: const ShapeDecoration(
        color: Color(0xFF1D1D1D),
        shape: CircleBorder(
          side: BorderSide(width: 5, color: Color(0xFF343434)),
        ),
      ),
      child: Image.asset(imageUrl, fit: BoxFit.contain),
    );
  }
}
