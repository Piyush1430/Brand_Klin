import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/car_carousel_pic.dart";

class FeatureCarPart extends StatefulWidget {
  const FeatureCarPart(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;
  @override
  State<FeatureCarPart> createState() => _FeatureCarPartState();
}

class _FeatureCarPartState extends State<FeatureCarPart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 680 * widget.heightRatio,
      child: Stack(
        children: [
          Container(
            height: 260 * widget.heightRatio,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.85, -0.52),
                end: Alignment(-0.85, 0.52),
                colors: [Color(0xFFD3D3D3), Color(0xFFDEDEDE)],
              ),
            ),
            child: customTextWidget(),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 0 * widget.widthRatio, top: 455 * widget.heightRatio),
            child: Container(
              height: 200 * widget.heightRatio,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.85, -0.52),
                  end: Alignment(-0.85, 0.52),
                  colors: [Color(0xFFD3D3D3), Color(0xFFDEDEDE)],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 20 * widget.widthRatio, top: 60 * widget.heightRatio),
            child: Container(
              height: 60 * widget.heightRatio,
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.black, width: 2.5)),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/group-15.png",
                      ),
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high)),
            ),
          ),
          diagonalText(
              text: 'POPULAR', top: 75, left: 40, textColor: Colors.white),
          diagonalText(
              left: 155, top: 75, text: "NEW", textColor: Colors.white),
          diagonalText(
              left: 233,
              top: 75,
              text: "UPCOMING",
              textColor: Colors.blueGrey.shade900),
          diagonalText(
              left: 332, top: 75, text: "SAV", textColor: Colors.black),
          Padding(
            padding: EdgeInsets.only(top: 120 * widget.heightRatio),
            child: SizedBox(
              child: CarCarouselPics(
                  heightRatio: widget.heightRatio,
                  widthRatio: widget.widthRatio),
            ),
          )
        ],
      ),
    );
  }

  Padding customTextWidget() {
    return Padding(
            padding: EdgeInsets.only(
                left: 10.0 * widget.widthRatio, top: 5 * widget.heightRatio),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'FEATURED ',
                      style: GoogleFonts.blackOpsOne(
                        color: const Color(0xFF828282),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        height: 0,
                        letterSpacing: -0.40,
                      ),
                    ),
                    TextSpan(
                      text: 'CARS',
                      style: GoogleFonts.blackOpsOne(
                        color: const Color(0xFFAB373A),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Padding diagonalText({
    required double left,
    required double top,
    required String text,
    required Color textColor,
  }) {
    return Padding(
      padding: EdgeInsets.only(
          left: left * widget.widthRatio, top: top * widget.heightRatio),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          color: textColor,
          fontSize: 13,
          fontWeight: FontWeight.w700,
          height: 0,
          letterSpacing: -0.26,
        ),
      ),
    );
  }
}
