import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_app/Cal_Provider.dart';
import 'package:new_app/Color.dart';
import 'package:new_app/home_screen.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(CalculatorApp());
}
class CalculatorApp extends StatelessWidget {
  const CalculatorApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context)=> CalculatorProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),

      ),
    );
  }
}


