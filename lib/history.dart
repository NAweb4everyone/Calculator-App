import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cal_Provider.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Calculation History")),
        body: Consumer<CalculatorProvider>(
            builder: (context, provider, _) {
              return ListView.builder(
                itemCount: provider.history.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(provider.history[index]),
                  );
                },
              );
            },
            ),
        );
    }
}