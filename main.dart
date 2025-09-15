import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      theme:  ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar:  AppBar(
        title:  Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape:BoxShape.circle,
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: ClipOval(
                child: Image.network('https://lh3.googleusercontent.com/a/ACg8ocK2nxY2SmVZK_bZVOkI0ioql1wqFpszpiiVVGL_dVfiChm4SMUD5Q=s288-c-no',
                  width: 150,
                  height: 150,
                fit: BoxFit.cover,),
              ),
            ),

            SizedBox(height: 20),
            Text('Romeo Juntila',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ) ,
            ),

            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Me',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),
                  ),
                  SizedBox(height: 10),
                  Text('I am Romeo Juntila, 21 years old. I lived in Catmon Malabon. I am currently studying at Global Reciprocal Colleges as a 3rd year IT student. My hobbies are drawing random stuff, playing video games, working out, and sleeping.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )

          ],
        )
      ),
    );

  }
}