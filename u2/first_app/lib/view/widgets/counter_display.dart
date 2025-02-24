import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int counterValue;

  const CounterDisplay({required this.counterValue}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$counterValue',
          style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
        ),
        Text(
          ClickText(),
          style: TextStyle(fontSize: 25),
        ),
      ],
    );
  }

  String ClickText(){
    if( counterValue==1){
      return "Click";
    }
    else{
      return "Clicks";
    }
  }
}
