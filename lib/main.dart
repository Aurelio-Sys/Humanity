import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './screens/HomePage.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String title = 'Humanity';
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomePage(),
      title: new Text(this.title,
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.greenAccent
        ),
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      onClick: ()=> print('Wait a moment please'),
      loaderColor: Colors.greenAccent,
    );
  }
}