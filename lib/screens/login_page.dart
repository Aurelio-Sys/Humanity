import 'package:flutter/material.dart';
import 'package:humanity/screens/signup.dart';

class LoginPage extends StatefulWidget {
  // static String tag = 'login-page';
  static const routeName = '/LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/images/icon_login.png',), 
      )
    );

        
    final forgotlabel = FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          'Selamat datang di Humanity Mobile App!  ',
          style: TextStyle(color: Colors.green, fontSize: 20),
          textAlign: TextAlign.center,
        ),
        onPressed: () { 
        },
      );

    final email = TextFormField( 
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'matana123@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '123123',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),

      ),
    );

      final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),

          ),
          onPressed: (){
            
           },
          padding: EdgeInsets.all(12),
          color: Colors.green,
          child: Text('Log in', style: TextStyle(color: Colors.white, fontSize: 17.0)),
        ),
      );

      final forgotLabel = FlatButton(
        child: Text(
          'Belum punya akun? Signup sekarang',
          style: TextStyle(color: Colors.purple, fontSize: 15),
        ),
        onPressed: () { 
         Navigator.push
         (
           context,
           MaterialPageRoute(builder: (context)
           {
             return new Signup();
           })
         );
        },
      );

      return Scaffold(
        appBar: AppBar(
          title: Text('Humanity',
          style: TextStyle(
            fontSize: 20,
            color: Colors.greenAccent
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 50.0),
              forgotlabel,
              email,
              SizedBox(height: 15.0),
              password,
              SizedBox(height: 24.0),
              loginButton,
              forgotLabel
            ],
          ),
        ),
      );

  }
}