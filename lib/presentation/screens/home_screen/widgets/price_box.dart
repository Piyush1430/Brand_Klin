import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/car_carousel_pic.dart";

class PriceBox extends StatefulWidget {
  const PriceBox(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;
  @override
  State<PriceBox> createState() => _PriceBoxState();
}

class _PriceBoxState extends State<PriceBox> {
  var selectedIndex = 0;
  void onConatinerTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  String priceText(int index) {
    switch (index) {
      case 0:
        {
          return "08";
        }
      case 1:
        {
          return "15";
        }
      case 2:
        {
          return "25";
        }
      case 3:
        {
          return "50";
        }

      case 4:
        {
          return "65";
        }

      default:
        {
          return "85";
        }
    }
  }

  Widget priceContainer({
    required String priceText,
    required Color containerColor,
    required double width,
    required double height,
    required double containerElevation,
    required double textSize,
    required double dividerHeight,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 4.0 * widget.widthRatio),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Material(
              elevation: containerElevation,
              shadowColor: Colors.grey.shade200,
              animationDuration: Durations.medium1,
              child: Container(
                padding: EdgeInsets.all(5 * widget.heightRatio),
                width: width,
                height: height,
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius:
                        BorderRadius.circular(5 * widget.heightRatio)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'UNDER',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: textSize,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      priceText,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: textSize,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.52,
                      ),
                    ),
                    Text(
                      'LAKHS',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: textSize,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 3.5 * widget.widthRatio),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: dividerHeight * widget.heightRatio),
              child: VerticalDivider(
                thickness: 3 * widget.heightRatio,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        backgroundPic(
          left: 130,
          top: 200,
          image: "assets/images/r5.png",
        ),
        backgroundPic(
          left: 130,
          top: 200,
          image: "assets/images/r5.png",
        ),

        backgroundPic(
          left: 5,
          top: 280,
          image: "assets/images/r5.png",
        ),
        backgroundPic(
          left: 5,
          top: 280,
          image: "assets/images/r5.png",
        ),

        Positioned(
          top: 110 * widget.heightRatio,
          left: 10 * widget.widthRatio,
          right: 0 * widget.widthRatio,
          child: Container(
            height: 130 * widget.heightRatio,
            width: 130 * widget.heightRatio,
            color: Colors.transparent,
            child: ListView.builder(
              itemCount: 6,
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    onConatinerTap(index);
                    setState(() {});
                  },
                  child: priceContainer(
                    height: selectedIndex == index
                        ? 120 * widget.heightRatio
                        : 100 * widget.heightRatio,
                    width: selectedIndex == index
                        ? 86 * widget.widthRatio
                        : 76 * widget.widthRatio,
                    containerElevation: selectedIndex == index ? 32 : 0,
                    dividerHeight: selectedIndex == index ? 8 : 18,
                    textSize: selectedIndex == index
                        ? 25 * widget.heightRatio
                        : 20 * widget.heightRatio,
                    containerColor: selectedIndex == index
                        ? const Color.fromRGBO(171, 55, 58, 1)
                        : const Color.fromRGBO(130, 130, 130, 1),
                    priceText: priceText(index),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 260 * widget.heightRatio,
          ),
          child: CarCarouselPics(
            heightRatio: widget.heightRatio,
            widthRatio: widget.widthRatio,
          ),
        ),
      ],
    );
  }

  Widget backgroundPic({
    required double left,
    required double top,
    required String image,
  }) {
    return Padding(
      padding: EdgeInsets.only(
          left: left * widget.widthRatio, top: top * widget.heightRatio),
      child: Container(
        alignment: Alignment.topRight,
        height: 500 * widget.heightRatio,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Image.asset(
          image,
          fit: BoxFit.fitWidth,
          filterQuality: FilterQuality.high,
          colorBlendMode: BlendMode.exclusion,
        ),
      ),
    );
  }
}
