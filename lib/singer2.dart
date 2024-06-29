import 'package:flutter/material.dart';

class singer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'here are some nh songs!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}