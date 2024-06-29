import 'package:flutter/material.dart';

class singer3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'here are some lm songs!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}