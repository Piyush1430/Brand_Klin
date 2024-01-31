import "package:flutter/material.dart";


class ButtonConatinerWidget extends StatelessWidget {
  const ButtonConatinerWidget(
      {super.key,
      this.color,
      this.buttonName,
      required this.onTapListener, required this.widthRatio, required this.heightRatio, this.textColor,
     });
  final Color? color;
  final Color? textColor;
  final String? buttonName;
  final void Function()? onTapListener;
  final double widthRatio;
  final double heightRatio;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
            onPressed: onTapListener,
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              minimumSize:  Size(widthRatio, heightRatio),
              elevation: 10,
              
            ),
            child: Text(
              "$buttonName",
              style:  TextStyle(
                  color: textColor, fontWeight: FontWeight.w700),
            ),
          );
  }
}
