// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main(){
  runApp(const EMMS());
}

class EMMS extends StatelessWidget {
  const EMMS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Activity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Column(
            children: [
              SafeArea(
                child: Text(" Electrical Machine Maintenance System",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Text("Location", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){}, child: Text("Omor Ekushe Hall")),
                  ElevatedButton(onPressed: (){}, child: Text("Muktijoddha Hall")),
                ],
              ),
              Center(
                child: ElevatedButton(
                  onPressed: (){}, 
                  child: Text("Main Pump"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[600],
                    foregroundColor: Colors.white
                  )
                  // ButtonStyle(
                  //   backgroundColor: MaterialStatePropertyAll(Colors.orange[600]),
                  //   foregroundColor: MaterialStatePropertyAll(Colors.white),
                  // ),
                )
              )
            ],
          ),
    );
  }
}