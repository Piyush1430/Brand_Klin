import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:rathamansion/global_variable/theme.dart";
import "package:rathamansion/presentation/screens/Credentials_screen/login_screen.dart";

class WelcomePage extends StatelessWidget {
  const WelcomePage(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity * heightRatio,
        width: double.infinity * widthRatio,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/app_ui.png",
              fit: BoxFit.cover,
              height: double.infinity * heightRatio,
              width: double.infinity * widthRatio,
              filterQuality: FilterQuality.high,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40 * widthRatio,
                top: 600 * heightRatio,
              ),
              child: SizedBox(
                  height: 600 * heightRatio,
                  width: 600 * widthRatio,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Buy Your Dream Car with ",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 26 * heightRatio,
                          letterSpacing: 1.6,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: "BRAND",
                          style: GoogleFonts.lato(
                            color: Colors.blueGrey.shade800,
                            fontWeight: FontWeight.w900,
                            fontSize: 26 * heightRatio,
                            letterSpacing: 1.6,
                          ),
                          children: [
                            TextSpan(
                              text: "KLIN",
                              style: GoogleFonts.lato(
                                fontSize: 24 * heightRatio,
                                fontWeight: FontWeight.w600,
                                foreground: Paint()
                                  ..shader = AppTheme.linerGradientShader,
                                letterSpacing: 1.6,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 120 * widthRatio,
                  right: 100 * widthRatio,
                  top: 840 * heightRatio,
                  bottom: 50 * heightRatio),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogInScreen(
                              heightRatio: heightRatio, widthRatio: widthRatio),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    alignment: Alignment.center,
                    minimumSize: Size.fromRadius(40 * heightRatio),
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 24 * heightRatio,
                      fontWeight: FontWeight.w800,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
