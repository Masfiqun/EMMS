// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets/images/973967.jpg'),
      //     fit: BoxFit.cover,
      //   )
      // ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Electical Machine Maintenance System", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
        ),

        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("1st Phase Voltage")
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

            Text("2"),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("1st Phase Current")
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




         