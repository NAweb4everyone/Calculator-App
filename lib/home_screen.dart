import 'package:flutter/material.dart';
import 'package:new_app/textfield.dart';

import 'package:provider/provider.dart';

import 'Cal_Button.dart';
import 'Cal_Provider.dart';
import 'Color.dart';
import 'Widget.data.dart';
import 'history.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));

    return Consumer<CalculatorProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Calculator App"),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: const Icon(Icons.history),
              onPressed: () {
                // Navigate to the History Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HistoryScreen()),
                );
              },
            )
          ],
        ),
        body: Column(
          children: [
            customTextField(
              controller: provider.compController,
            ),
            const Spacer(),
            Container(
              height: screenHeight * 0.6,
              width: double.infinity,
              padding: padding,
              decoration: decoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => ButtonList[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    List.generate(4, (index) => ButtonList[index + 4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    List.generate(4, (index) => ButtonList[index + 8]),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => ButtonList[index + 12]),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => ButtonList[index + 15]),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const CalculateButton(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
   });
    }
}