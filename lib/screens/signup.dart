import 'package:flutter/material.dart';
import 'package:humanity/screens/login_page.dart';


class Signup extends StatefulWidget {
  // static String tag = 'signup-page';
  static const routeName = '/Signup';
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'Hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/images/icon_register.png',),
      ),
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

    final username = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

      final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

      final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

      final SignupButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(LoginPage.routeName);
         },
         padding: EdgeInsets.all(12),
         color: Colors.green,
         child: Text('Signup', style: TextStyle(color: Colors.white, fontSize: 17.0)),

        ),
      );

      final forgotLabel = FlatButton(
        child: Text(
          'Sudah memiliki akun? Klik disini',
          style: TextStyle(color: Colors.purple, fontSize: 15),
        ),
        onPressed: (){
          Navigator.push
          (
            context,
            MaterialPageRoute(builder: (context)
            {
              return new LoginPage();
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
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
              username,
              SizedBox(height: 15.0),
              email,
              SizedBox(height: 15.0),
              password,
              SizedBox(height: 24.0),
              SignupButton,
              forgotLabel
            ],
          ),
        ),
      );

  }
}