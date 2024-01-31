import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class SearchTab extends StatelessWidget {
  const SearchTab(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Container(
            height: 44 * heightRatio,
            width: 360 * widthRatio,
            color: Colors.grey.shade700,
          ),
          Positioned(
            left: 16 * widthRatio,
            right: 32 * widthRatio,
            bottom: 3 * heightRatio,
            top: 3 * heightRatio,
            child: Container(
              height: 32 * heightRatio,
              width: 283 * widthRatio,
              color: Colors.white,
              child: Center(
                child: TextField(
                  style: GoogleFonts.lato(fontSize: 18*heightRatio,fontWeight: FontWeight.w500),
                  cursorColor: Colors.black87,
                  cursorWidth: 0.8*widthRatio,
                  decoration: InputDecoration(
                    disabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 17.0 * heightRatio, horizontal: 7 * widthRatio),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 3 * heightRatio,
            bottom: 3 * heightRatio,
            left: 275 * widthRatio,
            right: 10 * widthRatio,
            child: Container(
              width: 40 * widthRatio,
              color: Colors.black,
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 34 * heightRatio,
              ),
            ),
          ),
        ]),
        SizedBox(
          height: 3 * heightRatio,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Eg:',
                style: TextStyle(
                  color: const Color(0xFF828282),
                  fontSize: 9 * heightRatio,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.18,
                ),
              ),
              TextSpan(
                text: ' ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9 * heightRatio,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.18,
                ),
              ),
              const TextSpan(
                text: 'Tata Nexon',
                style: TextStyle(
                  color: Color(0xFFAB373A),
                  fontSize: 9,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                  letterSpacing: -0.18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
