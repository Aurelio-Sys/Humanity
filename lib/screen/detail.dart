import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData( fontFamily: "Jomolhari"
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  final String title = 'Panti Asuhan';
  final String location = 'Tangerang Banten';
  final String terkumpul = '0 dari 5.000.000';
  final String description =
  '''
 Panti Asuhan A Adalah panti asuhan yang sangat memerlukan bantuan dari anda, dikarenakan kondisi bangunan yang sudah tdk layak.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Humanity'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back),
        onPressed: () {},
          ),
        ],
          ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/rm.jpg',
            height: 250.0,
            width: 412.0,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15.0,
          ),
          Row(
            children:  [
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,                
                children:  [                  
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    this.terkumpul,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Container(
                width: 130.0,
              ),
              Icon(
                Icons.calendar_today,
                size: 20.0,
                color: Colors.red,
              ),              
              Text(
                '20 Hari',
                style: TextStyle(
                  fontSize: 15.0,
                )
              ),            
            ],
          ),          
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18.0, 
              ),
              softWrap: true,
            ),
          ),
    

          Container(width: 10),
            RaisedButton(
              child: Text('Donasi Sekarang'),
              onPressed: () {},
            ), 
        ],
      ),
    );
  }
}
