import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/about_us_video.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/comparision.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/custom_button.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/feature.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/fuel_price_widget.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/logs.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/new_update.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/posters.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/price_box.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/searchbar.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/social_featured.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/top_bar.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/top_pick.dart";
import "package:rathamansion/presentation/screens/home_screen/widgets/yt_car_video.dart";


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.heightRatio, required this.widthRatio});
   final double heightRatio;
  final double widthRatio;


  Widget backgroundPic(double widthRatio, double heightRatio) {
    return Padding(
      padding: EdgeInsets.only(left: widthRatio, top: heightRatio),
      child: Container(
        alignment: Alignment.topRight,
        height: 400 * heightRatio,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Image.asset(
          "assets/images/road.png",
          fit: BoxFit.fitWidth,
          filterQuality: FilterQuality.high,
          colorBlendMode: BlendMode.exclusion,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //topbar
              TopBar(
                heightRatio: heightRatio,
                widthRatio: widthRatio,
              ),
              //carposter
              PosterWidget(
                  heightRatio: 230 * heightRatio,
                  widthRatio: widthRatio,
                  posterImage: "assets/images/banner.png"),
              SizedBox(
                height: 21 * heightRatio,
              ),
              //Title Text
              Padding(
                padding: EdgeInsets.only(
                    top: 21 * heightRatio,
                    left: 31 * widthRatio,
                    right: 32 * widthRatio),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'FIND YOUR ',
                          style: GoogleFonts.blackOpsOne(
                            color: Colors.grey.shade600,
                            fontSize: 22.5 * heightRatio,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.61,
                          )),
                      TextSpan(
                        text: 'PERFECT CAR',
                        style: GoogleFonts.blackOpsOne(
                          color: const Color(0xFFAB373A),
                          fontSize: 22.5 * heightRatio,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.61,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 33 * heightRatio,
              ),
              //custombuttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButtons(
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                      buttonText: "SEARCH"),
                  CustomButtons(
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                      buttonText: "ASSIST ME"),
                  CustomButtons(
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                      buttonText: "CONSULT US"),
                ],
              ),
              SizedBox(
                height: 21 * heightRatio,
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16 * widthRatio)
                        .copyWith(top: 14 * heightRatio),
                    child: SearchTab(
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                    ),
                  ),
                  PriceBox(
                    heightRatio: heightRatio,
                    widthRatio: widthRatio,
                  ),
                ],
              ),
              //choose efuel price
              Stack(
                children: [
                  FuelPricePart(
                    heightRatio: heightRatio,
                    widthRatio: widthRatio,
                  ),
                  //backgroud price
                  backgroundPic(200 * widthRatio, 2 * heightRatio),
                  backgroundPic(200 * widthRatio, 2 * heightRatio),
                  //Feature Car part
                  Padding(
                    padding: EdgeInsets.only(top: 210 * heightRatio),
                    child: FeatureCarPart(
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                    ),
                  ),
                ],
              ),
              //car banner
              SizedBox(
                height: 20 * heightRatio,
              ),
              PosterWidget(
                heightRatio: 150 * heightRatio,
                widthRatio: widthRatio,
                posterImage: "assets/images/b4.jpg",
              ),
              CarLogo(heightRatio: heightRatio, widthRatio: widthRatio),
              SizedBox(
                height: 30 * heightRatio,
              ),
              //yt_car video section
              CarYTVideo(
                heightRatio: heightRatio,
                widthRatio: widthRatio,
              ),
              SizedBox(
                height: 30 * heightRatio,
              ),
              //car comparision
              ComparisionPart(
                widthRatio: widthRatio,
                heightRatio: heightRatio,
              ),
              SizedBox(
                height: 40 * heightRatio,
              ),
              //about us video poster part
              AboutUsVideoPoster(
                  widthRatio: widthRatio, heightRatio: heightRatio),
              //top pick part
              Stack(
                children: [
                  TopPickPart(widthRatio: widthRatio, heightRatio: heightRatio),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0 * heightRatio),
                    child: Image.asset("assets/images/road.png"),
                  ),
                  //new update part
                  Padding(
                    padding: EdgeInsets.only(top: 450.0 * heightRatio),
                    child: NewUpdatePart(
                        widthRatio: widthRatio, heightRatio: heightRatio),
                  ),
                ],
              ),

              //social-media handles part
              SocailMediaHandels(
                  widthRatio: widthRatio, heightRatio: heightRatio),
            ],
          ),
        ),
      ),
    );
  }
}
