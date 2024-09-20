import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/Cal_Provider.dart';
import 'package:provider/provider.dart';

import 'Color.dart';

class button1 extends StatelessWidget {
  const button1({
    super.key ,required this.lable, this.textcolor = Colors.white

  });

  final String lable;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
        Provider.of<CalculatorProvider>(context,listen: false).setValue(lable),


      child: Material(
        elevation: 3,
        color: AppColors.secondary2Color,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(radius: 36,child: Text(lable,style: TextStyle(color:textcolor,fontSize: 32,fontWeight: FontWeight.w600),),
          backgroundColor: AppColors.secondary2Color,
        ),
      ),
    );
  }
}
