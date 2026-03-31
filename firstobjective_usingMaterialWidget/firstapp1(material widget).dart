import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.deepPurple,
          child: const Center(
            child: Text(
            'Hello World',
            style: TextStyle(
              fontSize: 28.5, 
              color: Colors.white
              ),
            ),
          ),
        ),
      ),
    ),
  );
}