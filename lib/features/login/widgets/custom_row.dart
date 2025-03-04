import 'package:flutter/material.dart';
import 'package:marketi/core/helpers/colors.dart';
import 'package:marketi/core/widgets/custom_text.dart';

class CustomRow extends StatefulWidget {
  const CustomRow({super.key});

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                activeColor: secondColor,
                checkColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                side: BorderSide(color: dotColor.withValues(alpha: 178),width: 2),
                value: isChecked, 
                onChanged: (bool? value){
                  setState(() {
                    isChecked = value!;
                  });
              }),
              CustomText('Remember me'),
            ],
          ),
          CustomText('Forget Password?',color: secondColor,),
        ],
      ),
    );
  }
}