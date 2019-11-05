import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import './detail.dart';


class HomePage extends StatefulWidget {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
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
                        child: Text('User',
                        style: TextStyle(
                          fontSize: 18.0
                        ),
                        softWrap: true,),
                      ),
                    ],
                  ),
                  RaisedButton(
                    child: Text('Detail'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new Detail();
                      }));
                    },
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
