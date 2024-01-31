import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:rathamansion/global_variable/global_variables.dart';

class CarCarouselPics extends StatefulWidget {
  const CarCarouselPics(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;
  @override
  State<CarCarouselPics> createState() => _CarCarouselPicsState();
}

class _CarCarouselPicsState extends State<CarCarouselPics> {
  bool tapSave = false;
  Widget customTextWidget({
    String? onwardPrice,
    TextStyle? priceStyle,
  }) {
    return Text(onwardPrice!, style: priceStyle);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550 * widget.heightRatio,
      width: double.infinity * widget.widthRatio,
      padding: EdgeInsets.all(7 * widget.heightRatio),
      margin: EdgeInsets.only(left: 7 * widget.heightRatio),
      color: Colors.transparent,
      child: ListView.builder(
          itemCount: GlobalVariable.carImages.length,
          shrinkWrap: true,
           controller: ScrollController(keepScrollOffset: false),      
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(10.0 * widget.heightRatio),
              child: Material(
                elevation: 60,
                shadowColor: Colors.black26,
                child: Container(
                  width: 230 * widget.widthRatio,
                  padding: EdgeInsets.all(5 * widget.heightRatio),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.grey.shade100,
                          width: 2 * widget.widthRatio)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 7.0 * widget.widthRatio, right:4.0*widget.widthRatio),
                            child: customTextWidget(
                              onwardPrice:
                                  "${GlobalVariable.carImages[index]["price"]}",
                              priceStyle: GoogleFonts.blackOpsOne(
                                  color: const Color(0xFFAB373A),
                                  fontSize: 24 * widget.heightRatio,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                         
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 8 * widget.heightRatio),
                                customTextWidget(
                                  onwardPrice: "onwards",
                                  priceStyle: GoogleFonts.abel(
                                    fontSize: 18.5 * widget.heightRatio,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                customTextWidget(
                                  onwardPrice: "Ex Shroom Price",
                                  priceStyle: GoogleFonts.abel(
                                    color: Colors.grey,
                                    fontSize: 12 * widget.heightRatio,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0 * widget.heightRatio),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 32* widget.widthRatio,
                              height: 18 * widget.heightRatio,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFCE171C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.97),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0xFF8A1013),
                                    blurRadius: 0.37,
                                    offset: Offset(0, 0.37),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "${GlobalVariable.carImages[index]["rating"]}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.27 * widget.heightRatio,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 16 * widget.heightRatio,
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  tapSave = !tapSave;
                                });
                              },
                              icon: Icon(tapSave == false
                                  ? Icons.bookmark_border
                                  : Icons.bookmark),
                              key: ValueKey(tapSave),
                              color: Colors.grey.shade700,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6 * widget.heightRatio,
                      ),
                      Center(
                        child: SizedBox(
                          height: 140 * widget.heightRatio,
                          width: 140 * widget.widthRatio,
                          child: Image.asset(
                              "${GlobalVariable.carImages[index]["image"]}"),
                        ),
                      ),
                      SizedBox(
                        height: 6 * widget.heightRatio,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 6.0 * widget.heightRatio),
                        child: customTextWidget(
                            onwardPrice:
                                "${GlobalVariable.carImages[index]["name"]}",
                            priceStyle: GoogleFonts.blackOpsOne(
                              fontSize: 16.5 * widget.heightRatio,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.9,
                            )),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 6.0 * widget.heightRatio),
                        child: customTextWidget(
                          onwardPrice:
                              "${GlobalVariable.carImages[index]["subtitle"]}",
                          priceStyle: GoogleFonts.blackOpsOne(
                            fontSize: 16 * widget.heightRatio,
                            color: const Color(0xFFAB373A),
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.9,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(children: [
                            Image.asset(
                              "assets/images/person_seat.png",
                              scale: 3.1 * widget.heightRatio,
                            ),
                            Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${GlobalVariable.carImages[index]["seater"]}",
                                  style: GoogleFonts.lato(
                                    color: Colors.grey,
                                    fontSize: 12.6 * widget.heightRatio,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "Seater",
                                  style: GoogleFonts.lato(
                                    color: Colors.grey,
                                    fontSize: 12 * widget.heightRatio,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          ]),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/ncap1.png",
                                scale: 18.8 * widget.heightRatio,
                              ),
                              Text(
                                " NCAP NA* ",
                                style: GoogleFonts.lato(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.6 * widget.heightRatio,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 12 * widget.heightRatio),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/fule.png",
                                  scale: 2.8 * widget.heightRatio,
                                ),
                                SizedBox(width: 14 * widget.widthRatio),
                                Text(
                                  "Petrol \n Petrol \n Petrol \n Petrol",
                                  style: GoogleFonts.lato(
                                    color: Colors.grey,
                                    fontSize: 12.6 * widget.heightRatio,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ]),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/gear.png",
                                scale: 2.8 * widget.heightRatio,
                              ),
                              SizedBox(width: 6 * widget.widthRatio),
                              Text(
                                " Manual \n AMT \n Mannual \n AMT ",
                                style: GoogleFonts.lato(
                                  color: Colors.grey,
                                  fontSize: 12.6 * widget.heightRatio,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
