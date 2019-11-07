import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Form Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Humanity'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _pendanaan = <String>['', 'dana uang', 'pakaian', 'makanan', 'buku','dll'];
  String _dana = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
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
                            onChanged: (String newValue) {
                              setState(() {
                                _dana = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _pendanaan.map((String value) {
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
                      icon: const Icon(Icons.photo),
                      hintText: 'Masukkan Gambar Terkait',
                      labelText: 'Gambar',
                    ),
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Text('Browse'),
                        onPressed: null,
                      )),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.description),
                      hintText: 'Masukkan Deskripsi',
                      labelText: 'Deskripsi',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 230.0, right: 10.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Text('Save'),
                        onPressed: null,
                      )),
                ],
              ))),
    );
  }
}
