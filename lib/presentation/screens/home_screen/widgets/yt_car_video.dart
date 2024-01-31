import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:rathamansion/global_variable/global_variables.dart";

class CarYTVideo extends StatefulWidget {
  const CarYTVideo(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;
  @override
  State<CarYTVideo> createState() => _CarYTVideoState();
}

class _CarYTVideoState extends State<CarYTVideo> {
  

  void showVideo() {}
  Widget rotatedText({required String text}) {
    return RotatedBox(
      quarterTurns: -1,
      child: Text(
        text,
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: 26 * widget.heightRatio,
          fontWeight: FontWeight.w800,
          letterSpacing: 3.8,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350 * widget.heightRatio,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 18 * widget.widthRatio,
                height: 350 * widget.heightRatio,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10 * widget.widthRatio),
                child: Container(
                  alignment: Alignment.center,
                  width: 26 * widget.widthRatio,
                  height: 350 * widget.heightRatio,
                  padding:
                      EdgeInsets.symmetric(vertical: 10 * widget.heightRatio),
                  color: const Color(0xFFAB373A),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      rotatedText(text: 'VIDEOS'),
                      rotatedText(text: 'YOUTUBE'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: GlobalVariable.ytvideo.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only( left :10*widget.widthRatio ,right: 20 * widget.widthRatio),
                  child: Material(
                    elevation: 10,
                    shadowColor: Colors.grey.shade200,
                    child: InkWell(
                      onTap: () {
                        showVideo();
                      },
                      child: Container(
                        width: 210 * widget.widthRatio,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.shade200,
                            )),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 6 * widget.widthRatio,
                                  top: 10 * widget.heightRatio,
                                  right: 4 * widget.widthRatio),
                              child: SizedBox(
                                height: 210 * widget.heightRatio,
                                width: 210 * widget.widthRatio,
                                child: Image.asset(
                                    GlobalVariable.ytvideo[index]["image"]!),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 80 * widget.widthRatio,
                                  top: 90.0 * widget.heightRatio),
                              child: SizedBox(
                                height: 60 * widget.heightRatio,
                                width: 60 * widget.widthRatio,
                                child: Image.asset(
                                  "assets/images/youtube.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            carNameText(
                              width: 16 * widget.widthRatio,
                              height: 240.0 * widget.heightRatio,
                              text: GlobalVariable.ytvideo[index]["name"]!,
                              textStyle: GoogleFonts.blackOpsOne(
                                color: const Color(0xFF848484),
                                fontSize: 24 * widget.heightRatio,
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: 0.22,
                              ),
                            ),
                            carNameText(
                              width: 16 * widget.widthRatio,
                              height: 280.0 * widget.heightRatio,
                              text: GlobalVariable.ytvideo[index]["subtitle"]!,
                              textStyle: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16 * widget.heightRatio,
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: 0.18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget carNameText({
    required double width,
    required double height,
    required String text,
    required TextStyle textStyle,
  }) {
    return Padding(
        padding: EdgeInsets.only(left: width, top: height),
        child: Text(
          text,
          style: textStyle,
        ));
  }
}
