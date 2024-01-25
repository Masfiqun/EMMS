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
      appBar: AppBar(
        title: Text("Electical Machine Maintenance System", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
      ),
      body: 
          Column(
            children: [
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
              SizedBox(
                width: 110,
                height: 100,  
                child: ElevatedButton(
                  onPressed: (){}, 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.volunteer_activism),
                      Text("Pump")
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.orange[600],
                    foregroundColor: Colors.white
                  )
                ),
              )
            ],
          ),
    );
  }
}