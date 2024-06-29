import 'package:flutter/material.dart';

class singer4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'here are some kk songs!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}