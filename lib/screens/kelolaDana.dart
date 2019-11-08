import 'package:flutter/material.dart';

class KelolaDana extends StatefulWidget {
  static const routeName = '/KelolaDana';

  @override
  _KelolaDanaState createState() => new _KelolaDanaState();
}

class _KelolaDanaState extends State<KelolaDana> {
     final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List _pendanaan = ['', 'dana uang', 'pakaian', 'makanan', 'buku','dll'];
  String _dana = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Galang Dana',
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              new FormField(
                builder: (FormFieldState state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.store),
                      labelText: 'Jenis Pendanaan',
                    ),
                    isEmpty: _dana == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton(
                        value: _dana,
                        isDense: true,
                        onChanged: (newValue) {
                          setState(() {
                            _dana = newValue;
                            state.didChange(newValue);
                          });
                        },
                        items: _pendanaan.map((value) {
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
                  icon: const Icon(Icons.person),
                  hintText: 'Masukkan judul lengkap',
                  labelText: 'Judul',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.place),
                  hintText: 'Masukkan Tempat atau Lokasi',
                  labelText: 'Lokasi',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.star),
                  hintText: 'Masukkan target dana',
                  labelText: 'Target',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Masukkan batas waktu pendanaan',
                  labelText: 'Tenggat Waktu',
                ),
                keyboardType: TextInputType.datetime,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.description),
                  hintText: 'Masukkan Deskripsi',
                  labelText: 'Deskripsi',
                ),
                keyboardType: TextInputType.text,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.attach_money),
                  hintText: 'Masukkan jumlah dana terkumpul',
                  labelText: 'Dana Terkumpul'
                ),
                keyboardType: TextInputType.number,
              ),
              new Container(
                  padding: const EdgeInsets.only(left: 230.0, right: 10.0, top: 20.0),
                  child: new RaisedButton(
                    child: const Text('Save'),
                    onPressed: null,
                  )
                ),
            ],
          )
        )
      ),
    );
  }
}