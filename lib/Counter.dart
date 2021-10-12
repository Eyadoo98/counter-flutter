import 'package:flutter/material.dart';

class Counter extends StatefulWidget {

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
                counter++;
              });
            }, child: Text("Plus",style: TextStyle(fontSize: 40.0,color: Colors.blue),),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("$counter",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold, color: Colors.black),),
            ),
            TextButton(onPressed: (){
              setState(() {
                counter--;
                if(counter == -1){
                  counter=0;
                }
              });
            }, child: Text("Minus",style: TextStyle(fontSize: 40.0,color: Colors.blue),),),
          ],
        ),
      ),
    );
  }
}
