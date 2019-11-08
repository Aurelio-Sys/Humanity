import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import 'package:humanity/screens/detail.dart';



class HomePage extends StatefulWidget {
  static const routeName = '/HomePage';
  @override
  HomePageState createState()=> new HomePageState();
}

class HomePageState extends State<HomePage> {

  static final List<String> photos = [
    'assets/images/charity1.jpg',
    'assets/images/charity2.png',
    'assets/images/charity3.jpg',
    'assets/images/rm.jpg',
  ];

  final CarouselSlider autoPlayImage = CarouselSlider(
    items: photos.map((fileImage) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            '${fileImage}',
            width: 10000,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    height: 200,
    autoPlay: true,
    enlargeCenterPage: true,
    aspectRatio: 2.0,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: SearchBar(
        defaultBar: AppBar(
          title: Text('Humanity',
          style: TextStyle(
            color: Colors.greenAccent
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 15.0,
              ),
              autoPlayImage,
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 10,
                    height: 15,
                  ),
                  Text('Ingin donasikan ke siapa hari ini ?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/charity1.jpg',
                      height: 125,
                      width: 200,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Panti Asuhan',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ),
                            softWrap: true,),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Text('John',
                            style: TextStyle(
                              fontSize: 16.0
                            ),
                            softWrap: true,),
                          )
                        ],
                      ),
                      RaisedButton(
                        color: Colors.greenAccent,
                        child: Text('Detail'),
                        onPressed: () {
                          Navigator.pushNamed(context, Detail.routeName);
                        },
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/charity1.jpg',
                      height: 125,
                      width: 200,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Panti Asuhan',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ),
                            softWrap: true,),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Text('John',
                            style: TextStyle(
                              fontSize: 16.0
                            ),
                            softWrap: true,),
                          )
                        ],
                      ),
                      RaisedButton(
                        color: Colors.greenAccent,
                        child: Text('Detail'),
                        onPressed: () {
                          Navigator.pushNamed(context, Detail.routeName);
                        },
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/charity1.jpg',
                      height: 125,
                      width: 200,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Panti Asuhan',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ),
                            softWrap: true,),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Text('John',
                            style: TextStyle(
                              fontSize: 16.0
                            ),
                            softWrap: true,),
                          )
                        ],
                      ),
                      RaisedButton(
                        color: Colors.greenAccent,
                        child: Text('Detail'),
                        onPressed: () {
                          Navigator.pushNamed(context, Detail.routeName);
                        },
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/charity1.jpg',
                      height: 125,
                      width: 200,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Panti Asuhan',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ),
                            softWrap: true,),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Text('John',
                            style: TextStyle(
                              fontSize: 16.0
                            ),
                            softWrap: true,),
                          )
                        ],
                      ),
                      RaisedButton(
                        color: Colors.greenAccent,
                        child: Text('Detail'),
                        onPressed: () {
                          Navigator.pushNamed(context, Detail.routeName);
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 15,
          ),
        ],
      ),
    );
  }
}