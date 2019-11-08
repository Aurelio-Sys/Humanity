import 'package:flutter/material.dart';

class StepPembayaran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Humanity',
        style: TextStyle(
          fontSize: 20,
          color: Colors.greenAccent
          ),
        ),
      ),
      body: new Stepper(
        
      ),
    );
  }
}