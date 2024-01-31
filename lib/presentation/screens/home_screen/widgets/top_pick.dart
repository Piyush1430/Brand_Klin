import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:rathamansion/global_variable/global_variables.dart";

class TopPickPart extends StatefulWidget {
  const TopPickPart(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;

  @override
  State<TopPickPart> createState() => _TopPickPartState();
}

class _TopPickPartState extends State<TopPickPart> {
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController(
      initialScrollOffset: 845 * widget.widthRatio / 2,

    );
  }

  Widget title() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'TOP PICKS FOR ',
            style: GoogleFonts.blackOpsOne(
              color: const Color(0xFF828282),
              fontSize: 30 * widget.heightRatio,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.40,
            ),
          ),
          TextSpan(
            text: 'YOU',
            style: GoogleFonts.blackOpsOne(
              color: const Color(0xFFAB3839),
              fontSize: 30 * widget.heightRatio,
              fontWeight: FontWeight.w800,
              height: 0,
              letterSpacing: -0.40,
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380 * widget.heightRatio,
      width: double.infinity * widget.widthRatio,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0 * widget.widthRatio),
            child: title(),
          ),
          SizedBox(
            height: 10 * widget.heightRatio,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: GlobalVariable.ytvideo.length,
              scrollDirection: Axis.horizontal,
             controller: _controller,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: 10 * widget.widthRatio,
                      right: 20 * widget.widthRatio),
                  child: Material(
                    elevation: 10,
                    shadowColor: Colors.grey.shade200,
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
                );
              },
            ),
          ),
          
        ],
      ),
    );
  }
}
