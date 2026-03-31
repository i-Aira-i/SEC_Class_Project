import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Consistent theme (Objective 3)
      theme: ThemeData.dark(),

      home: HomeScreen(),
    );
  }
}









//LAB $ OBJECTIVE ASSET MANAGMANET 
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ProfileScreen(),
//     );
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Image Lab"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [

//             // Objective 3 & 4 (Image + Size)
//             Image.asset(
//               'assets/images/profile.png',
//               height: 150,
//               width: 150,
//             ),

//             SizedBox(height: 10),

//             // Objective 5 (BoxFit)
//             Container(
//               height: 200,
//               width: 200,
//               child: Image.asset(
//                 'assets/images/bg.png',
//                 fit: BoxFit.cover,
//               ),
//             ),

//             SizedBox(height: 10),

//             // Objective 6 (Image + Text)
//             Column(
//               children: [
//                 Image.asset('assets/images/logo.png', height: 80),
//                 Text("This is Logo"),
//               ],
//             ),

//             SizedBox(height: 20),

//             // Objective 7 (Circular Image)
//             Container(
//               height: 120,
//               width: 120,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/profile.jpg'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),

//             SizedBox(height: 20),

//             // Objective 8 (Alignment)
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Image.asset('assets/images/logo.png', width: 50),
//                 Image.asset('assets/images/profile.jpg', width: 50),
//                 Image.asset('assets/images/bg.png', width: 50),
//               ],
//             ),

//             SizedBox(height: 20),

//             // Objective 9 (UI Layout - Card)
//             Card(
//               elevation: 5,
//               margin: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Image.asset('assets/images/profile.png'),
//                   SizedBox(height: 5),
//                   Text("John Doe", style: TextStyle(fontSize: 18)),
//                   Text("Flutter Developer"),
//                 ],
//               ),
//             ),

//             SizedBox(height: 20),

//             // Objective 11 (Profile Section)
//             Column(
//               children: [
//                 Container(
//                   height: 100,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/profile.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text("Your Name", style: TextStyle(fontSize: 20)),
//                 Text("Student | Developer"),
//               ],
//             ),

//             SizedBox(height: 20),

//             // Objective 12 (Responsive Image)
//             Container(
//               height: 150,
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Image.asset(
//                       'assets/images/bg.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Expanded(
//                     child: Image.asset(
//                       'assets/images/bg.png',
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }