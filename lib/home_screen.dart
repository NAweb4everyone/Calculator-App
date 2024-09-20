
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/Cal_Provider.dart';
import 'package:new_app/Color.dart';
import 'package:new_app/textfield.dart';
import 'package:provider/provider.dart';

import 'Cal_Button.dart';
import 'Widget.data.dart';
import 'button.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 25,vertical: 30);
    final decoration = BoxDecoration(color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top:Radius.circular(30))
    );
    return Consumer<CalculatorProvider>(
      builder: (context,provider,_) {
        return Scaffold(
            appBar: AppBar(
              title: Center(child: Text("Calculator App",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)),
              backgroundColor: Colors.blue,
            ),
            body: Column(
              children: [
                customTextField(
                  controller: provider.cmpController,
                ),
                const Spacer(),
                Container(height: screenHight * 0.6,
                  width: double.infinity,
                  padding: padding,
                  decoration: decoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) =>ButtonList[index])
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) =>ButtonList[index + 4])
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) =>ButtonList[index + 8])
                    ),
                    Row(

                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(3, (index) =>ButtonList[index + 12])
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(3, (index) =>ButtonList[index + 15])
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        const CalculateButton()
                      ],
                    )
                  ],)



                )
              ],
            )
        );
      }
    );
  }
}

