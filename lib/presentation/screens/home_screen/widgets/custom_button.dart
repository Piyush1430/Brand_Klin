import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomButtons extends StatelessWidget {
  const CustomButtons(
      {super.key,
      required this.heightRatio,
      required this.widthRatio,
      required this.buttonText});
  final double heightRatio;
  final double widthRatio;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Material(
   elevation: 4,
      child: Container(
        height: 32 * heightRatio,
        width: 112 * widthRatio,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 5),
        ),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: GoogleFonts.lexend(
            color: const Color(0xFF828282),
            fontSize: 9,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.61,
          ),
        ),
      ),
    );
  }
}
