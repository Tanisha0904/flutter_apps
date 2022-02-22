import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[900],
        body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('Images/Tanu.jpg'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Tanisha K',
                  style: TextStyle(
                    fontSize: 65.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tangerine',
                  ),
                ),
                Text(
                  'LEARNING FLUTTER',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    color: Colors.green[300],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.green[300],
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                  // padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.green[700],
                    ),
                    title: Text(
                      '+91 9404356359',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                  // padding: EdgeInsets.all(5),
                  child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.green[700],
                      ),
                      title: Text(
                        'tanishakumthekar9@gmail.com',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                        ),
                      )
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
