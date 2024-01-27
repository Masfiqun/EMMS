// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:emms/Current/1st_Phase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.landscapeLeft]
  );
  runApp(const EMMS());
}

class EMMS extends StatelessWidget {
  const EMMS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Activity(),
      debugShowCheckedModeBanner: false,
      // theme: new ThemeData(scaffoldBackgroundColor: Colors.amber),

    );
  }
}

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {

  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.all(10),
    backgroundColor: Colors.deepPurpleAccent[100],
    foregroundColor: Colors.white,
    
  );

 bool button = false;
 String mytext = "hello";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Electical Machine Monitoring System", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
          centerTitle: true,
          toolbarHeight: 30,
          elevation: 2,
          shadowColor: Colors.deepPurpleAccent,
          surfaceTintColor: Colors.lightBlueAccent,
        ),

        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

           //first Column materials
          //voltage parts
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("1st Phase Voltage"),
                  style: buttonStyle,
                ),

                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("2nd Phase Voltage")
                ),

                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("3rd Phase Voltage")
                ),

                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("Voltage Monitoring Graph")
                ),
              ],
            ),

          //second Column materials
            Expanded(
              child: Container(
                child: Center(child: Text(button ? "done" :mytext)),
              )
            ),

          //third Column materials
          //Current parts
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      button = !button;
                    });
                  }, 
                  child: Text("1st Phase Current"),
                  style: buttonStyle,
                ),

                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("2nd Phase Current")
                ),

                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("3rd Phase Current")
                ),

                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("Current Monitoring Graph")
                ),
              ],
            )
          ], 
        )
      ),
    );
  }
}



          // Column(
          //   children: [
          //     SizedBox(height: 20,),
          //     Text("Location", style: TextStyle(fontWeight: FontWeight.bold),),
          //     SizedBox(height: 20,),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         ElevatedButton(onPressed: (){}, child: Text("Omor Ekushe Hall")),
          //         ElevatedButton(onPressed: (){}, child: Text("Muktijoddha Hall")),
          //       ],
          //     ),
          //     SizedBox(
          //       width: 110,
          //       height: 100,  
          //       child: ElevatedButton(
          //         onPressed: (){}, 
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Icon(Icons.volunteer_activism),
          //             Text("Pump")
          //           ],
          //         ),
          //         style: ElevatedButton.styleFrom(
          //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          //           backgroundColor: Colors.orange[600],
          //           foregroundColor: Colors.white
          //         )
          //       ),
          //     )
          //   ],
          // ),




         