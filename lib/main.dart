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
    return Scaffold();
  }
}