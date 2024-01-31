import "dart:typed_data";

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:image_picker/image_picker.dart";
import "package:rathamansion/global_variable/theme.dart";
import "package:rathamansion/global_variable/utils.dart";

class TopBar extends StatefulWidget {
  const TopBar(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  Uint8List? image;

  _selectImages() async {
    Uint8List im;
    im = await pickedImage(ImageSource.gallery);
    setState(() {
      image = im;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 71 * widget.heightRatio,
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 14 * widget.widthRatio,
              top: 14 * widget.heightRatio,
              bottom: 12 * widget.heightRatio,
            ),
            child: Text.rich(
              TextSpan(
                text: "BRAND",
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24 * widget.heightRatio,
                  letterSpacing: 1.6,
                ),
                children: [
                  TextSpan(
                    text: "KLIN",
                    style: GoogleFonts.lato(
                      fontSize: 24 * widget.heightRatio,
                      fontWeight: FontWeight.w600,
                      foreground: Paint()
                        ..shader = AppTheme.linerGradientShader,
                      letterSpacing: 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6 * widget.heightRatio)
                .copyWith(right: 14 * widget.widthRatio),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.white,
                  size: 32 * widget.heightRatio,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 32 * widget.heightRatio,
                ),
                image != null
                    ? GestureDetector(
                        onTap: _selectImages,
                        child: CircleAvatar(
                            radius: 34 * widget.heightRatio,
                            backgroundColor: Colors.white,
                            backgroundImage: MemoryImage(image!)),
                      )
                    : GestureDetector(
                        onTap: _selectImages,
                        child: CircleAvatar(
                          radius: 34 * widget.heightRatio,
                          backgroundColor: Colors.white,
                          backgroundImage: const AssetImage(
                            "assets/images/profile_default.png",
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
