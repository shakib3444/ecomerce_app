
import 'package:flutter/material.dart';


class AppInput extends StatelessWidget {
  const AppInput({super.key,
    required this.hint,
    required this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.readOnly = false,
    this.obscureText = false,
    this.validator,
    this.textType,
    this.onClick,
    this.onChanged,
    this.maxLine = 1,
    this.fillColor=Colors.white,
    this.isValidatorNeed = true,
    this.circle =10,
    this.hintColor = Colors.black,

  });
  final String hint;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final bool readOnly;
  final bool obscureText;
  final TextInputType?textType;
  final VoidCallback? onClick;
  final Function(String)? onChanged;
  final int maxLine;
  final Color? fillColor;
  final bool isValidatorNeed;
  final double circle;
  final Color hintColor;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onClick,
      onChanged: onChanged,
      maxLines: maxLine,
      keyboardType:textType,
      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color:hintColor),
      readOnly:readOnly ,
      obscureText:obscureText ,
      controller:controller ,
      validator: (v){
        if(isValidatorNeed){
          if(v!.isEmpty){
            return "Must be required.";
          }
          return null;
        }
        return null;

      },
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.only(left: 15,),
        filled: true,
        fillColor: fillColor,
        hintText: hint,
        hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: hintColor),

        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(circle),

        ),
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(circle),

        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(circle),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(circle),

        ),
      ),
    );
  }
}
