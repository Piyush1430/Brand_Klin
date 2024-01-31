import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ComparisionPart extends StatefulWidget {
  const ComparisionPart(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;

  @override
  State<ComparisionPart> createState() => _ComparisionPartState();
}

class _ComparisionPartState extends State<ComparisionPart> {
  late ScrollController _controller;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController(
      initialScrollOffset: 430*widget.widthRatio/2,
    );
  }

  @override
  Widget build(BuildContext context) {
    //color: Color(0xFFAB3839),
    return SizedBox(
      height: 300 * widget.heightRatio,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16 * widget.heightRatio),
            child: Row(
              children: [
                Text(
                  "Car",
                  style: GoogleFonts.blackOpsOne(
                    color: const Color(0xFF828282),
                    fontSize: 28 * widget.heightRatio,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.40,
                  ),
                ),
                SizedBox(width: 7 * widget.widthRatio),
                Text(
                  "Comparison",
                  style: GoogleFonts.blackOpsOne(
                    color: const Color(0xFFAB3839),
                    fontSize: 28 * widget.heightRatio,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.40,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 15,
                    child: Container(
                        height: 300 * widget.heightRatio,
                        width: 240 * widget.widthRatio,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        child: Image.asset(
                          "assets/images/poster.png",
                          fit: BoxFit.cover,
                        )),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
