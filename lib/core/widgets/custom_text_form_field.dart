import 'package:flutter/material.dart';
import 'package:marketi/core/helpers/colors.dart';
import 'package:marketi/core/widgets/custom_text.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key,this.controller,this.function,this.text,required this.hintText,this.iconPre,this.iconSuf,this.iconSuf1});
final IconData? iconPre;
final IconData? iconSuf;
final IconData? iconSuf1;
final String hintText;
final String? text;
final FormFieldValidator<String>? function;
final TextEditingController? controller;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

bool obscure = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(widget.text ?? '',fontWeight: FontWeight.bold,),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextFormField(
              cursorColor: secondColor,
              obscureText: obscure,
              validator: widget.function,
              controller: widget.controller,
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.red, width: 2), 
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
                errorStyle: TextStyle(color: Colors.red, height: 0.9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}