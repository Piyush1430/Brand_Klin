import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:rathamansion/global_variable/global_variables.dart';

class CarLogo extends StatelessWidget {
  const CarLogo(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;

  Widget titleText() {
    return SizedBox(
      width: 232 * widthRatio,
      height: 60 * heightRatio,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'BROWSE BY ',
              style: GoogleFonts.blackOpsOne(
                color: const Color(0xFF828282),
                fontSize: 30 * heightRatio,
                fontWeight: FontWeight.w800,
                height: 0,
                letterSpacing: -0.40,
              ),
            ),
            TextSpan(
              text: 'BRANDS',
              style: GoogleFonts.blackOpsOne(
                color: const Color(0xFFAB373A),
                fontSize: 30 * heightRatio,
                fontWeight: FontWeight.w800,
                height: 0,
                letterSpacing: -0.40,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row carLogosRow({
    required List<Map<String, String>> logoRowNo,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...logoRowNo.map(
          (i) => Builder(
            builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 60 * heightRatio,
                    width: 60 * widthRatio,
                    child: Image.asset(
                      "${i["logo"]}",
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  SizedBox(
                    height: 7 * heightRatio,
                  ),
                  Text(
                    "${i["logoName"]}",
                    style: GoogleFonts.lato(
                      fontSize: 18 * heightRatio,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.6,
                    ),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370 * heightRatio,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0 * widthRatio),
                  child: Image.asset(
                    "assets/images/r5.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 14 * widthRatio, top: 30 * heightRatio),
                  child: titleText(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 14 * widthRatio, top: 110 * heightRatio),
                  child: SizedBox(
                    height: 400 * heightRatio,
                    child: Column(
                      children: [
                        carLogosRow(
                          logoRowNo: GlobalVariable.carLogos,
                        ),
                        SizedBox(
                          height: 40 * heightRatio,
                        ),
                        carLogosRow(
                          logoRowNo: GlobalVariable.carLogos2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30 * heightRatio,
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade800,
              ),
            )),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 284 * widthRatio,top:2*heightRatio),
                  child: Image.asset("assets/images/rect.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 300 * widthRatio ,top:4*heightRatio),
                  child: Text(
                    "Load More",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17.5*heightRatio,
                      letterSpacing: 0.5,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
