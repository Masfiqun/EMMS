import 'package:flutter/material.dart';

class first_phase_current extends StatefulWidget {
  const first_phase_current({super.key});

  @override
  State<first_phase_current> createState() => _first_phase_currentState();
}

class _first_phase_currentState extends State<first_phase_current> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 200,
        width: 200,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.amberAccent
          )
        ),
      ),
    );
  }
}