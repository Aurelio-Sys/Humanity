import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false
,
title: 'Humanity',
theme: ThemeData(fontFamily: "JomolHari",
primaryColor: Colors.white
),

home: HomePage(),

)
);

class HomePage extends StatefulWidget {
  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Humanity',style: TextStyle (color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body:  
     
      Container(
        child: Products(),
        
        ),
      bottomNavigationBar: MyBottomNavBar(),
      
        );

    
  }
}

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}
 class _ProductsState extends State<Products> {
   final List_item = [
     {
       "nama" : "panti asuhan",
       "creator" : "Nat",
       "pic" : "assets/images/baju.jpg",
     },
     {
       "nama" : "Panti Asuhan B",
       "creator" : "Nut",
       "pic" : "assets/images/buku.jpg",
     },
     {
       "nama" : "panti asuhan C",
       "creator" : "Net",
       "pic" : "assets/images/buku2.jpg",
     },
     {
       "nama" : "panti asuhan D",
       "creator" : "Not",
       "pic" : "assets/images/rm.jpg",
     },
     {
       "nama" : "panti asuhan E",
       "creator" : "Aryo",
       "pic" : "assets/images/uang.jpg",
     },
     {
       "nama" : "panti asuhan F",
       "creator" : "Bimo",
       "pic" : "assets/images/panti.jpg",
     },
     {
       "nama" : "panti asuhan G",
       "creator" : "Bima",
       "pic" : "assets/images/pantia.jpg",
     },
   ];
    @override
    Widget build(BuildContext context) {
      return GridView.builder(
        itemCount: List_item.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Product(
            product_nama: List_item[index]['nama'],
            product_creator: List_item[index]['creator'],
            product_pic: List_item[index]['pic'],
          );
        }
        );
    } 
  }

class Product extends StatelessWidget {
  final product_nama;
  final product_creator;
  final product_pic;
  Product({
    this.product_nama,
    this.product_creator,
    this.product_pic});
 @override
 Widget build(BuildContext context){
   return Card(
     child: Hero(
       tag: product_nama,
       child: Material(
         child: InkWell(
           onTap: (){},
           child: GridTile(
             footer: Container(
               color: Colors.blue,
               child: ListTile(
                 leading: Text(product_nama,style: TextStyle(color: Colors.orange),),
                 title: Text('$product_creator',style: TextStyle(color: Colors.white),),
                 ),
             ),
             child: Image.asset(product_pic, fit: BoxFit.cover,),
           ),
           )
       ),
     ),
   );

 
 }
}
  class MyBottomNavBar extends StatelessWidget {
    @override
    MyBottomNavBar createState() => MyBottomNavBar();
  MyBottomNavBar();

  

  @override
  Widget build(BuildContext context) {
    /// BottomNavigationBar is automatically set to type 'fixed'
    /// when there are three of less items
    return BottomNavigationBar(
     
     items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home',style: TextStyle(color: Colors.black)),
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.usb),
          title: Text('Category',style: TextStyle(color: Colors.black)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.threed_rotation),
          title: Text('Other',style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}