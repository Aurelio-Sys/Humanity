import 'package:flutter/material.dart';
import 'package:humanity/screens/detail.dart';
import 'package:humanity/screens/donasi.dart';
import 'package:humanity/screens/kelolaDana.dart';
import 'package:humanity/screens/login_page.dart';
import 'package:humanity/screens/mainadd.dart';
import 'package:humanity/screens/signup.dart';
import 'package:splashscreen/splashscreen.dart';
import './screens/HomePage.dart';
import 'package:humanity/screens/mainPage.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Humanity',
    theme: ThemeData(
      primaryColor: Colors.white,
      fontFamily: 'Jomolhari'
    ),
    initialRoute: '/',
    routes: {
      '/' : (context) => MyApp(),
      MainPage.routeName : (context) => MainPage(),
      HomePage.routeName : (context) => HomePage(),
      Detail.routeName : (context) => Detail(),
      LoginPage.routeName : (context) => LoginPage(),
      Signup.routeName : (context) => Signup(),
      Donasi.routeName : (context) => Donasi(),
      GalangDana.routeName : (context) => GalangDana(),
      KelolaDana.routeName : (context) => KelolaDana(),
    },
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
      navigateAfterSeconds: new MainPage(),
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