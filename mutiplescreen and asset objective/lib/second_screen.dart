import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  // ✅ Objective 7: Receiving data
  final String name;
  final String message;

  SecondScreen({required this.name, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Portfolio"),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            // ✅ Objective 8: Display data
            Text(
              name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Text(message),

            SizedBox(height: 20),

            Image.asset(
              'assets/images/logo.png',
              height: 200,
            ),

            SizedBox(height: 20),

            // ✅ Objective 5: Go back
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}