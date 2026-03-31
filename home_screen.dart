import 'package:flutter/material.dart';
import 'second_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Animation controller for glitch movement
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // 🌈 HOLOGRAM BACKGROUND
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.blue.shade900,
              Colors.purple.shade900,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // 🔵 GLOW EFFECT + SQUARE BREAKING IMAGE
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.cyanAccent,
                      blurRadius: 25,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: GlitchImage(), // 👈 custom widget
              ),

              SizedBox(height: 20),

              // ⚡ GLITCH TEXT
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset((_controller.value * 6) - 3, 0),
                    child: Stack(
                      children: [
                        Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.cyanAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Positioned(
                          left: 2,
                          child: Text(
                            "John Doe",
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              SizedBox(height: 10),

              Text(
                "Flutter Developer",
                style: TextStyle(color: Colors.white70),
              ),

              SizedBox(height: 30),

              // 🚀 BUTTON WITH DATA PASSING (Objective 7)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: BorderSide(color: Colors.cyanAccent),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(
                        name: "John Doe",
                        message: "Welcome to my Portfolio 🚀",
                      ),
                    ),
                  );
                },
                child: Text(
                  "ENTER PORTFOLIO",
                  style: TextStyle(color: Colors.cyanAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// 🔥 CUSTOM WIDGET: SQUARE BREAKING / GLITCH IMAGE
//
class GlitchImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [

        // Base Image
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/images/profile.png'),
        ),

        // 🟥 Square glitch pieces
        Positioned(
          top: 10,
          left: 15,
          child: glitchBox(),
        ),

        Positioned(
          bottom: 15,
          right: 10,
          child: glitchBox(size: 30),
        ),

        Positioned(
          top: 25,
          right: 20,
          child: glitchBox(size: 20),
        ),
      ],
    );
  }

  Widget glitchBox({double size = 25}) {
    return Container(
      width: size,
      height: size,
      color: Colors.cyanAccent.withOpacity(0.5),
    );
  }
}