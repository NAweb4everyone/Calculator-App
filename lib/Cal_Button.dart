import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Cal_Provider.dart';
import 'Color.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // Trigger the calculation and update the history
          Provider.of<CalculatorProvider>(context, listen: false).setValue("=");

          // Optionally, provide feedback (like a SnackBar)
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Calculation completed and added to history!'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        child: Container(
            height: 160,
            width: 70,
            decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(40)),
            child: const Center(
              child: Text(
                "=",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            ),
        );
  }
}