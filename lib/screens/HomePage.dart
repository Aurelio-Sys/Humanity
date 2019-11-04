import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text('Humanity',
          style: TextStyle(
            color: Colors.greenAccent
            ),
          ),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FloatingSearchBar.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Text(index.toString()),
              );
            },
            trailing: CircleAvatar(child: Text('A'),),
            onChanged: (String value) {},
            onTap: () {},
            decoration: InputDecoration.collapsed(
              hintText: "Cari lokasi terdekat"
            ),
          )
        ],
      )
    );
  }
}

