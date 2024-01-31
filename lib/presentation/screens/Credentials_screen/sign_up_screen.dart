import "dart:typed_data";

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:image_picker/image_picker.dart";
import "package:rathamansion/global_variable/strings.dart";
import "package:rathamansion/global_variable/utils.dart";
import "package:rathamansion/presentation/screens/Credentials_screen/login_screen.dart";
import "package:rathamansion/presentation/screens/Credentials_screen/widget/custom_button_field.dart";
import "package:rathamansion/presentation/screens/Credentials_screen/widget/custom_form_field.dart";
import "package:rathamansion/presentation/screens/home_screen/home_screen.dart";

class SignUpScreen extends StatefulWidget {
  const SignUpScreen(
      {super.key, required this.heightRatio, required this.widthRatio});
  final double heightRatio;
  final double widthRatio;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

//login
  void signInUser() async {
    setState(() {
      isLoading = true;
    });
    if (_formKey.currentState!.validate()) {
      await Future.delayed(const Duration(seconds: 1));
      if (context.mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomeScreen(
                heightRatio: widget.heightRatio, widthRatio: widget.widthRatio),
          ),
        );
      }
    }
    setState(() {
      isLoading = false;
    });
  }

  Uint8List? image;

  _selectImages() async {
    Uint8List im;
    im = await pickedImage(ImageSource.gallery);
    setState(() {
      image = im;
    });
  }

  //backgroudDesign
  Widget backgroudDesign({
    required double right,
    required double top,
    required Color circleColor,
  }) {
    return Positioned(
      right: right * widget.widthRatio,
      top: top * widget.heightRatio,
      child: Container(
        height: 800 * widget.heightRatio,
        width: 800 * widget.widthRatio,
        decoration: ShapeDecoration(
          shape: const CircleBorder(),
          color: circleColor,
        ),
      ),
    );
  }

  //Brand Name
  Widget brandName() {
    return Text.rich(
      TextSpan(
        text: "BRAND",
        style: GoogleFonts.lato(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 50 * widget.heightRatio,
          letterSpacing: 1.6,
        ),
        children: [
          TextSpan(
            text: "KLIN",
            style: GoogleFonts.lato(
              fontSize: 50 * widget.heightRatio,
              fontWeight: FontWeight.w600,
              color: const Color(0xFFEEA026),
              letterSpacing: 1.6,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF828282),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Stack(
            children: [
              backgroudDesign(
                  circleColor: const Color.fromARGB(255, 161, 19, 19),
                  top: -400,
                  right: -180),
              backgroudDesign(
                  circleColor: const Color.fromRGBO(190, 8, 8, 1),
                  top: -480,
                  right: -145),
              Padding(
                padding: EdgeInsets.only(
                    left: 70 * widget.widthRatio,
                    top: 200 * widget.heightRatio),
                child: Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 50 * widget.heightRatio,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20 * widget.widthRatio,
                    top: 100 * widget.heightRatio),
                child: brandName(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 260 * widget.heightRatio),
                child: Container(
                  height: 840 * widget.heightRatio,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20 * widget.widthRatio)
                          .copyWith(top: 10 * widget.heightRatio),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          image != null
                              ? CircleAvatar(
                                  radius: 80 * widget.heightRatio,
                                  backgroundImage: MemoryImage(image!),
                                  backgroundColor: Colors.red,
                                )
                              : CircleAvatar(
                                  radius: 80 * widget.heightRatio,
                                  backgroundImage: const AssetImage(
                                      "assets/images/profile_default.png"),
                                  backgroundColor: Colors.white,
                                ),
                          Positioned(
                            bottom: -10 * widget.heightRatio,
                            left: 60 * widget.widthRatio,
                            child: IconButton(
                              onPressed: _selectImages,
                              icon: Icon(Icons.add_a_photo,
                                  color: Colors.grey.shade900),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20 * widget.heightRatio,
                      ),
                      Expanded(
                        child: FormConatinerField(
                            heightRatio: 10 * widget.heightRatio,
                            formController: _nameController,
                            hintText: "Name",
                            inputType: TextInputType.name,
                            prefixIcon: const Icon(CupertinoIcons.person_fill),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Please fill in this field';
                              }
                              return null;
                            }),
                      ),
                      Expanded(
                        child: FormConatinerField(
                            heightRatio: 10 * widget.heightRatio,
                            formController: _emailController,
                            hintText: "Email",
                            inputType: TextInputType.emailAddress,
                            prefixIcon: const Icon(CupertinoIcons.mail_solid),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Please fill in this field';
                              } else if (!emailRexExp.hasMatch(val)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            }),
                      ),
                      Expanded(
                        child: FormConatinerField(
                            heightRatio: 10 * widget.heightRatio,
                            formController: _passwordController,
                            hintText: "Password",
                            isPasswordField: true,
                            inputType: TextInputType.visiblePassword,
                            prefixIcon: const Icon(CupertinoIcons.lock_fill),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Please fill in this field';
                              } else if (val.length < 6) {
                                return 'Password  length must be atleast 6 Character';
                              }
                              return null;
                            }),
                      ),
                      SizedBox(
                        height: 10 * widget.heightRatio,
                      ),
                      isLoading == false
                          ? ButtonConatinerWidget(
                              heightRatio: 60 * widget.heightRatio,
                              widthRatio: 130 * widget.widthRatio,
                              textColor: Colors.black,
                              onTapListener: signInUser,
                              buttonName: "Sign Up",
                            )
                          : const Center(
                              child: CircularProgressIndicator(
                              color: Colors.white,
                            )),
                      SizedBox(
                        height: 5 * widget.heightRatio,
                      ),
                      Text(
                        'or',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 30 * widget.heightRatio,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 5 * widget.heightRatio,
                      ),
                      ButtonConatinerWidget(
                        heightRatio: 60 * widget.heightRatio,
                        widthRatio: 100 * widget.widthRatio,
                        color: const Color.fromRGBO(223, 92, 92, 1),
                        textColor: Colors.white,
                        onTapListener: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => LogInScreen(
                                  heightRatio: widget.heightRatio,
                                  widthRatio: widget.widthRatio),
                            ),
                          );
                        },
                        buttonName: "Log In",
                      ),
                      SizedBox(
                        height: 10 * widget.heightRatio,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 80 * widget.heightRatio,
                            width: 80 * widget.widthRatio,
                            child: Image.asset(
                              "assets/images/img_google.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 80 * widget.heightRatio,
                            width: 80 * widget.widthRatio,
                            child: Image.asset(
                              "assets/images/img_facebook.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 80 * widget.heightRatio,
                            width: 80 * widget.widthRatio,
                            child: Image.asset(
                              "assets/images/img_twitter.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
