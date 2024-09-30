import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final compController = TextEditingController();

  // List to store calculation history
  final List<String> _history = [];

  // Getter for history
  List<String> get history => _history;

  // Method to handle button inputs
  void setValue(String value) {
    String str = compController.text;

    switch (value) {
      case "C":
        compController.clear();
        break;
      case "AC":
        if (str.isNotEmpty) {
          compController.text = str.substring(0, str.length - 1);
        }
        break;
      case "X":
        compController.text += "*";
        break;
      case "=":
        compute();  // Perform calculation
        break;
      default:
        compController.text += value;
    }
    compController.selection = TextSelection.fromPosition(
        TextPosition(offset: compController.text.length));
  }

  // Method to perform the calculation
  void compute() {
    String expression = compController.text;
    try {
      // Evaluate the expression
      String result = expression.interpret().toString();

      // Add calculation to history
      _addToHistory('$expression = $result');

      // Display result in text field
      compController.text = result;
    } catch (e) {
      // Handle invalid expressions
      compController.text = 'Error';
    }
  }

  // Add the calculation to history
  void _addToHistory(String calculation) {
    _history.add(calculation);
    notifyListeners();  // Notify listeners that the history has been updated
  }

  // Clear the history
  void clearHistory() {
    _history.clear();
    notifyListeners();  // Notify listeners to rebuild the UI
  }

  @override
  void dispose() {
    super.dispose();
    compController.dispose();
  }
}