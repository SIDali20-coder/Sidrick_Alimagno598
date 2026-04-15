import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
const Homepage({super.key});

@override
State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
String title = "";
int counter = 0;
TextEditingController number1 = TextEditingController();
TextEditingController number2 = TextEditingController();
double total= 0;

@override
void initState() {
title = "Welcome to Homepage";
number1.text = "0";
number2.text = "0";
super.initState();
}

void handleAddition(){
setState(() {
total = double.parse(number1.text) + double.parse(number2.text);
});
}

void handleButtonClick(){
setState(() {
counter += 1;
});
}

void handleSubtraction(){
setState(() {
total =double.parse(number1.text) - double.parse(number2.text);
});
}
void handMultiplication(){
setState(() {
total =double.parse((number1.text)) * double.parse(number2.text);
});
}

@override
Widget build(BuildContext context) {
return Scaffold(
body: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Center(child: Text(title)),
Center(child: Text("$counter")),
ElevatedButton(onPressed: (){handleButtonClick();}, child: Text("inscrement counter")
),

SizedBox(height: 20,),
TextField(controller: number1,),
SizedBox(height: 20,),
TextField(controller: number2,),
ElevatedButton(onPressed: (){handleAddition();}, child: Text("Addition")
),

SizedBox(height: 20,),
ElevatedButton(onPressed: (){handleSubtraction();}, child: Text("Subtraction")
),

SizedBox(height: 20,),
ElevatedButton(onPressed: (){handMultiplication();}, child: Text("Multiplication")
),

SizedBox(height: 20,),
Text("Total is $total"),
],
),
);
}
}