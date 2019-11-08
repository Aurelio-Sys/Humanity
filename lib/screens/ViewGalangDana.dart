import 'package:flutter/material.dart';
import 'package:humanity/screens/detail.dart';
import 'package:humanity/screens/kelolaDana.dart';


class ViewGalangDana extends StatefulWidget {
  @override
  createState() => ViewGDState();
}

class ViewGDState extends State<ViewGalangDana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Humanity',style: TextStyle (color: Colors.greenAccent)),
        backgroundColor: Colors.white,
      ),
      body:  
     
      Container(
        child: ListGalangDana(),
        ),
        );

    
  }
}

class ListGalangDana extends StatefulWidget {
  @override
  _ListGalangDana createState() => _ListGalangDana();
}
 class _ListGalangDana extends State<ListGalangDana> {
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
          return Keterangan(
            nama: List_item[index]['nama'],
            penggalang: List_item[index]['creator'],
            gambar: List_item[index]['pic'],
          );
        }
        );
    } 
  }

class Keterangan extends StatelessWidget {
  final nama;
  final penggalang;
  final gambar;
  Keterangan({
    this.nama,
    this.penggalang,
    this.gambar});
 @override
 Widget build(BuildContext context){
   return Card(
     child: Hero(
       tag: nama,
       child: Material(
         child: InkWell(
           onTap: (){},
           child: GridTile(
             footer: Container(
               color: Colors.grey,
               child: ListTile(
                 leading: Text(nama,style: TextStyle(color: Colors.orange),),
                 title: Text('$penggalang',style: TextStyle(color: Colors.white,),),
                 onTap: () {
                   Navigator.of(context).pushNamed(KelolaDana.routeName);
                 },
                 ),
             ),
             child: Image.asset(gambar, fit: BoxFit.cover,),
           ),
           )
       ),
     ),
   );

 
 }
}