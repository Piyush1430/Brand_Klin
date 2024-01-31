import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class FuelPricePart extends StatelessWidget {
  const FuelPricePart(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;
  @override
  Widget build(BuildContext context) {
    Widget dropDownItems({
      required String text,
      required IconData icon,
    }) {
      return Container(
        width: 105 * widthRatio,
        height: 30 * heightRatio,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFF737373)),
          ),
        ),
        child: Center(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              text,
              style: GoogleFonts.lato(
                fontSize: 20 * heightRatio,
              ),
            ),
            Icon(
              icon,
              color: const Color(0xFFAB373A),
              size: 28 * heightRatio,
            ),
          ]),
        ),
      );
    }

    return SizedBox(
      height: 300 * heightRatio,
      child: Padding(
        padding: EdgeInsets.only(left: 12.0 * widthRatio),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 7 * heightRatio,
                ),
                Padding(
                  padding:  EdgeInsets.only(left :8.0*heightRatio) ,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'FUEL ',
                          style: GoogleFonts.blackOpsOne(
                            color: const Color(0xFF828282),
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.60,
                          ),
                        ),
                        TextSpan(
                          text: 'PRICE',
                          style: GoogleFonts.blackOpsOne(
                            color: const Color(0xFFAB373A),
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            height: 0,
                            letterSpacing: -0.60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    dropDownItems(
                        text: "Choose City", icon: Icons.arrow_drop_down),
                    SizedBox(
                      width: 7 * widthRatio,
                    ),
                    dropDownItems(
                        text: "Fuel Type", icon: Icons.arrow_drop_down),
                    SizedBox(
                      width: 14 * widthRatio,
                    ),
                    Container(
                      width: 50 * widthRatio,
                      height: 80 * heightRatio,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade700,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          " 106.08  \n \t  INR ",
                          style: GoogleFonts.lato(
                              fontSize: 18 * heightRatio, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4 * widthRatio,
                    ),
                    Container(
                      width: 60 * widthRatio,
                      height: 100 * heightRatio,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade100,
                        image: const DecorationImage(
                          image: AssetImage(
                              "assets/images/bharat.png"),
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                          isAntiAlias: true,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
