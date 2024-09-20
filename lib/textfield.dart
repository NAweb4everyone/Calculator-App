import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Color.dart';

class customTextField extends StatelessWidget {
   customTextField({
    super.key, required this.controller,
  });

  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25,vertical:30),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: AppColors.primaryColor, filled: true


        ),
        style: TextStyle(fontSize: 50),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}
