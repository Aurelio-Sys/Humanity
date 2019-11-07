import 'package:flutter/material.dart';
import 'package:humanity/screens/HomePage.dart';

class Donasi extends StatefulWidget {
  static const routeName = '/Donasi';
  @override
  DonasiState createState() => new DonasiState();
}

class DonasiState extends State<Donasi> {

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  List<String> _metodePembayaran = [
    '', 'GoPay', 'Transfer BCA', 'Ovo'
  ];

  String metodePembayaran = '';

  bool isSwitched = false;
  bool addKomentar = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Humanity',
        style: TextStyle(
          fontSize: 20,
          color: Colors.greenAccent
        ),),
      ),
      body: new SafeArea(
        top: false,
        bottom: false,
        child: new Form(
          key: _formKey,
          autovalidate: true,
          child: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: <Widget>[
              new FormField(
                builder: (FormFieldState state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.payment),
                      labelText: 'Metode Pembayaran'
                    ),
                    isEmpty: _metodePembayaran == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton(
                        value: metodePembayaran,
                        isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            metodePembayaran = newValue;
                            state.didChange(newValue);
                          });
                        },
                        items: _metodePembayaran.map((String value) {
                          return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.attach_money),
                  hintText: 'Masukkan nominal',
                  labelText: 'Nominal'
                ),
                keyboardType: TextInputType.number,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Masukkan Nama Lengkap',
                  labelText: 'Nama Lengkap'
                ),
                keyboardType: TextInputType.text,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone_android),
                  hintText: 'Masukkan No.HP',
                  labelText: 'No.HP'
                ),
                keyboardType: TextInputType.phone,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.contacts),
                  hintText: 'Masukkan Email',
                  labelText: 'Email'
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              Container(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Sembunyikan nama saya')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeTrackColor: Colors.greenAccent,
                        activeColor: Colors.green,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Tulis Komentar')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Switch(
                        value: addKomentar,
                        onChanged: (value) {
                          setState(() {
                            addKomentar = value;
                          });
                        },
                        activeTrackColor: Colors.greenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Total ')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Rp. xxxxxx')
                    ],
                  )
                ],
              ),
              RaisedButton(
                child: Text('Lanjutkan Pembayaran'),
                onPressed: () {
                  Navigator.of(context).popUntil(ModalRoute.withName(HomePage.routeName));
                },
              ),
            ],
          ),
        )
      )
    );
  }
}