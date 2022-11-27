import 'package:flutter/material.dart';
import 'package:session1/components/calculator_button.dart';

class CalculatorScreen extends StatefulWidget {
  static String routename = "Calculator";

  @override
  State<StatefulWidget> createState() {
    return CalculatoScreenState();
  }
}

class CalculatoScreenState extends State<CalculatorScreen> {
  String resultText="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Center(
                  child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 18),
                      child: Text(
                        resultText,
                        style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
                      )))),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(digit:"7",onClick: onDigitClick, ),
                  CalculatorButton(digit: "8",onClick: onDigitClick,),
                  CalculatorButton(digit: "9",onClick: onDigitClick,),
                  CalculatorButton(digit: "+",onClick: onDigitClick,),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(digit: "4",onClick: onDigitClick,),
                  CalculatorButton(digit: "5",onClick: onDigitClick,),
                  CalculatorButton(digit: "6",onClick: onDigitClick,),
                  CalculatorButton(digit: "-",onClick: onDigitClick,),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(digit: "1",onClick: onDigitClick,),
                  CalculatorButton(digit: "2",onClick: onDigitClick,),
                  CalculatorButton(digit: "3",onClick: onDigitClick,),
                  CalculatorButton(digit: "*",onClick: onDigitClick,),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(digit: ".",onClick: onOperatorClick,),
                  CalculatorButton(digit: "0",onClick: onOperatorClick,),
                  CalculatorButton(digit: "=",onClick: onOperatorClick,),
                 CalculatorButton(digit: "/",onClick: onOperatorClick,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  onDigitClick(String digit){
    setState((){
      resultText+=digit;

    });


  }
  String operator="";
  String leftHandSide="";
  onOperatorClick(String clickedOperator){
    if(operator.isEmpty){
      leftHandSide=resultText;
      operator = clickedOperator;
      setState(() {
        resultText="";
      });
    }else{
     leftHandSide = calculate(double.parse(leftHandSide), operator, double.parse(resultText));
    }
    
    
   
    print("left hand side:$leftHandSide,saved operator:$operator");

  }
  String calculate(double leftHandSide , String operator , double rhs){
    if(operator=="+"){
      return (leftHandSide+rhs).toString();

    } else if(operator=="-"){
      return (leftHandSide-rhs).toString();

    }else if(operator=="*"){
      return (leftHandSide*rhs).toString();

    }else {
      return (leftHandSide/rhs).toString();

    }

  }
}
