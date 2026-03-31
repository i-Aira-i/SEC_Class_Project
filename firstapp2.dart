
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp  extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home:HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget{
   const HomeScreen({super.key});

   @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: HelloWorldText(),
      ),
    );
  }
}


class HelloWorldText extends StatelessWidget {
  const HelloWorldText({super.key});


  @override
  Widget build(BuildContext context) {
    return const Text(
    'hello World',
    style: TextStyle(
      fontSize: 26,
      color: Colors.black,
      fontWeight: FontWeight.bold,
     ),
    );
  }
} 




