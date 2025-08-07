import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  final Color buttonColor;

   CounterStateful({Key? key, required this.buttonColor}) : super(key: key);

  @override
  State<CounterStateful> createState() {
    State<CounterStateful> stateClassAssociatedWithThisWidget =
    _CounterStatefulState();
    return stateClassAssociatedWithThisWidget;
  }
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;
 //Color buttonColor=Colors.blue;

  void increment() {
    setState(() {
      counter++;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: widget.buttonColor,
          child: Icon(Icons.add),
          onPressed: () {
            increment();
          },
        ),
        body: Center(
          child: Text(
            '$counter',
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}