// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;
  
  // Method --> Increment
  void _incrementCounter(){
    //setState is used for StatfulWidget, its rebuilds the widget
    setState(() {
      _counter++;
  }
    );
}

  // Method --> Reset
  void _resetCounter(){
    setState(() {
      _counter = 0 ;
    });

  }

  //Method --> Decrement
  void _decrementCounter(){
      setState(() {
        _counter--;
      });
    }


  //User Interface
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("Don't reinvent the wheel, Improve it"),
      backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // message
            Text("Appuie sur   '+1'   pour augmenter : ", 
            style: TextStyle(
              color: Colors.green,
              fontSize: 20,
              ),
              ),

            Text("Appuie sur   '-1'   pour diminuer : ",
            style: TextStyle(
              color:  Colors.orange,
              fontSize: 20,
              ),
            ),

            Text("Appuie sur 'Remettre à 0' pour reprendre : ",
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,),
              ),

            // Counter value
            Text(_counter.toString(),
              style: TextStyle(
                fontSize: 50,
            ),
            ),
// mettre en Row
            Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children : [

                
                // Augmneter
                ElevatedButton(onPressed: _incrementCounter , 
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Set the background color here
                ),
                child: Text("     +1     ",
                style: TextStyle(
                  fontSize: 15,
                ),
                )
                ),
                
                // Put Space
                SizedBox(width: 10,),
                // Remettre a 0
                ElevatedButton(onPressed: _resetCounter,
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Set the background color here
                ),
                child: Text("Remettre à 0"),
                ),

                // Augmenter
                SizedBox(width: 10,),

                //Diminuer
                ElevatedButton(onPressed: _decrementCounter, 
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Set the background color here
                ),
                child: Text("     -1     ",
                style: TextStyle(
                  fontSize: 15,
                ),
                )
                ),
              ],
              ),
          ],
            ),
            ),
          );
      }
    }