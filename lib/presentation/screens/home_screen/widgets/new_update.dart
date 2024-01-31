import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class NewUpdatePart extends StatefulWidget {
  const NewUpdatePart(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;

  @override
  State<NewUpdatePart> createState() => _NewUpdatePartState();
}

class _NewUpdatePartState extends State<NewUpdatePart> {
    late ScrollController _controller;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController(
      initialScrollOffset: 80*widget.widthRatio/2,
    );
  }
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'NEWS ',
              style: GoogleFonts.blackOpsOne(
                color: const Color(0xFF828282),
                fontSize: 36 * widget.heightRatio,
                fontWeight: FontWeight.w800,
                height: 0,
                letterSpacing: -0.40,
              ),
            ),
            TextSpan(
              text: 'UPDATE',
              style: GoogleFonts.blackOpsOne(
                color: const Color(0xFFAB373A),
                fontSize: 36 * widget.heightRatio,
                fontWeight: FontWeight.w800,
                height: 0,
                letterSpacing: -0.40,
              ),
            ),
          ],
        ),
      );
    }

    return SizedBox(
        height: 380 * widget.heightRatio,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14.0 * widget.widthRatio),
              child: title(),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  Container(
                    height: 400 * widget.heightRatio,
                    width: 320 * widget.widthRatio,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/about.png"))),
                  ),
                  SizedBox(
                    width: 20 * widget.widthRatio,
                  ),
                  Container(
                    height: 400 * widget.heightRatio,
                    width: 320 * widget.widthRatio,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/about2.png"))),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
