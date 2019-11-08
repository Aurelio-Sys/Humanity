import 'package:flutter/material.dart';
import 'package:humanity/screens/HomePage.dart';

    class Categories extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Humanity',
          theme: ThemeData( fontFamily: "Jomolhari",
            primaryColor: Colors.white,
          ),
          home: Scaffold(
            appBar: AppBar(title: Text('Humanity',
            style: TextStyle(
              fontSize: 20,
              color: Colors.greenAccent
            ),),
         ),
            body: BodyLayout(),
          ),
        );
      }
    }

    class BodyLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView(context);
      }
    }

 Widget _myListView(BuildContext context) {
      return ListView(
        children: <Widget>[
          ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/uang.jpg'),
          ),
            title: Text('Uang'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, HomePage.routeName);
             },
          ),
          ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage('assets/images/baju.jpg'),),
            title: Text('Pakaian'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {

             },
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/buku.jpg'),
            ),
            title: Text('Buku'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               
             },
          ),
        ],
      );
    }



