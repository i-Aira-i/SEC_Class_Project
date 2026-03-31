import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonPracticeScreen(),
    );
  }
}

class ButtonPracticeScreen extends StatefulWidget {
  const ButtonPracticeScreen({super.key});

  @override
  State<ButtonPracticeScreen> createState() => _ButtonPracticeScreenState();
}

class _ButtonPracticeScreenState extends State<ButtonPracticeScreen> {
  String displayText = "Hello";
  String buttonText = "Change Text";

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Practice App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              displayText,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                showMessage("Elevated Button Pressed!");
              },
              child: const Text("Elevated Button"),
            ),

            const SizedBox(height: 15),

            TextButton(
              onPressed: () {
                showMessage("Text Button Pressed!");
              },
              child: const Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),

            const SizedBox(height: 15),

            OutlinedButton(
              onPressed: () {
                showMessage("Outlined Button Pressed!");
              },
              child: const Text("Outlined Button"),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.pink),
                  iconSize: 30,
                  onPressed: () {
                    showMessage("Favorite Clicked!");
                  },
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = "Button Clicked!";
                      buttonText = "Text Changed ✔";
                    });
                    showMessage("Text Changed Successfully!");
                  },
                  child: Text(buttonText),
                ),

                IconButton(
                  icon: const Icon(Icons.home, color: Colors.blue),
                  iconSize: 30,
                  onPressed: () {
                    showMessage("Home Clicked!");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}