import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{
  final cmpController = TextEditingController();
  setValue(String value){
    String str= cmpController.text;
    switch(value){
      case "C":
        cmpController.clear();
      break;
      case "AC":
        cmpController.text= str.substring(0, str.length - 1);
        break;
      case "X":
        cmpController.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        cmpController.text += value;





    }
    cmpController.selection= TextSelection.fromPosition(TextPosition(offset: cmpController.text.length));
  }
   compute(){
    String text = cmpController.text;
    cmpController.text = text.interpret().toString();

   }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    cmpController.dispose();
  }
}