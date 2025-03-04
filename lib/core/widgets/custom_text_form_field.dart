import 'package:flutter/material.dart';
import 'package:marketi/core/helpers/colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key,required this.hintText,this.iconPre,this.iconSuf,this.iconSuf1});
final IconData? iconPre;
final IconData? iconSuf;
final IconData? iconSuf1;
final String hintText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
bool obscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextFormField(
          cursorColor: secondColor,
          obscureText: obscure,
          decoration: InputDecoration(
            prefixIcon: Icon(widget.iconPre,color: Colors.black,size: 15,),
            suffixIcon: IconButton(
              icon: Icon(obscure ? widget.iconSuf : widget.iconSuf1,color: Colors.black,size: 15,),
              onPressed: (){
              setState(() {
                obscure = !obscure;
              });
            }, ),
            hintText: widget.hintText,
            hintStyle: TextStyle(color: hintTextColor),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: dotColor.withValues(alpha: 178),width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: dotColor.withValues(alpha: 178),width: 2),
            ),
          ),
        ),
      ),
      );
  }
}