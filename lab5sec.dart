import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
    //objective 1
    return MaterialApp(
      title: 'Basic App',
      home: Scaffold(
        appBar: AppBar(title: Text("Column Widget")),

        //objective 2
        body: Center(
          child:Column(
             mainAxisSize: MainAxisSize.min,
          children: [
            Text("First Widget"),
            Text("Second Widget"),
            Text("Third Widget"),
            Container(
              child:Text("TRY"),
              color: Colors.red, 
              height: 50, 
              width: 200),

            SizedBox(height: 10,),

            Container(color: Colors.green, height: 50, width: 200),
            SizedBox(height: 10,),
            Container(color: Colors.blue, height: 50, width: 200),


            //objective 3,4 and 5
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.home, size:30),
                SizedBox(width: 20),
                Icon(Icons.favorite, size:50),
                SizedBox(width: 20),
                Icon(Icons.settings, size:70),
              ],
            ),
          ],
        ),
        ),
      ),
    );
  }
}
