import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/Cal_Provider.dart';
import 'package:provider/provider.dart';

import 'Color.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>
      Provider.of<CalculatorProvider>(context,listen: false).setValue("="),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
            color: AppColors.secondaryColor ,
            borderRadius: BorderRadius.circular(40)),
        child: Center(child: Text("=",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),)),
      ),
    );
  }
}

