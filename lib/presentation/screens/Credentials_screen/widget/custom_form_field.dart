import "package:flutter/material.dart";

class FormConatinerField extends StatefulWidget {
  const FormConatinerField(
      {super.key,
      this.formController,
      this.fieldKey,
      this.isPasswordField,
      this.helperText,
      this.hintText,
      this.labeltext,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      this.inputType,
      this.prefixIcon, required this.heightRatio});
   final double heightRatio;   
  final TextEditingController? formController;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? helperText;
  final String? hintText;
  final Widget? prefixIcon;
  final String? labeltext;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  @override
  State<FormConatinerField> createState() => _FormConatinerFieldState();
}

class _FormConatinerFieldState extends State<FormConatinerField> {
  bool _isObscureText = true;
  Color primaryColor = Colors.white;
  Color secondaryColor = Colors.black87;
  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(30),
    );
    return Container(
      width: double.infinity,
      height: widget.heightRatio,
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        style: TextStyle(color: secondaryColor),
        controller: widget.formController,
        key: widget.fieldKey,
        obscureText: widget.isPasswordField == true ? _isObscureText : false,
        onFieldSubmitted: widget.onFieldSubmitted,
        validator: widget.validator,
        keyboardType: widget.inputType,
        onSaved: widget.onSaved,
        decoration: InputDecoration(
          fillColor: primaryColor.withOpacity(1),
          border: inputBorder,
          prefixIcon: widget.prefixIcon,
          prefixIconColor: secondaryColor,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          focusColor: primaryColor,
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: secondaryColor),
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                _isObscureText = !_isObscureText;
              });
            },
            child: widget.isPasswordField == true
                ? Icon(
                    _isObscureText ? Icons.visibility_off : Icons.visibility,
                    color: _isObscureText
                        ? secondaryColor
                        : const Color.fromARGB(255, 161, 19, 19),
                  )
                : const Text(""),
          ),
        ),
      ),
    );
  }
}
