import 'package:flutter/material.dart';

class singer6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'here are some sn songs!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}