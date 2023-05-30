import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(crud1101204173());
}

class crud1101204173 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase CRUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final databaseReference =
      FirebaseDatabase.instance.ref().child('1101204173');

  String _nama = '';
  int _nim = 0;
  double _nilai = 0.0;
  String _resume = '';

  TextEditingController _namaController = TextEditingController();
  TextEditingController _nimController = TextEditingController();
  TextEditingController _nilaiController = TextEditingController();
  TextEditingController _resumeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase CRUD'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _namaController,
                decoration: InputDecoration(
                  labelText: 'Nama',
                ),
              ),
              TextField(
                controller: _nimController,
                decoration: InputDecoration(
                  labelText: 'NIM',
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _nilaiController,
                decoration: InputDecoration(
                  labelText: 'Nilai',
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _resumeController,
                decoration: InputDecoration(
                  labelText: 'Resume',
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      readData();
                    },
                    child: Text('Baca'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _nama = _namaController.text;
                      _nim = int.parse(_nimController.text);
                      _nilai = double.parse(_nilaiController.text);
                      _resume = _resumeController.text;

                      writeData(_nama, _nim, _nilai, _resume);

                      _namaController.clear();
                      _nimController.clear();
                      _nilaiController.clear();
                      _resumeController.clear();
                    },
                    child: Text('Tambah'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) => UpdateDialog(databaseReference),
                      );
                    },
                    child: Text('Perbarui'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) => DeleteDialog(databaseReference),
                      );
                    },
                    child: Text('Hapus'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

 void readData() {
  databaseReference.once().then((DataSnapshot snapshot) {
    if (snapshot.value != null) {
      Map<dynamic, dynamic>? values = snapshot.value as Map?;
      values?.forEach((key, values) {
        print('Key: $key');
        print('Nama: ${values["Nama"]}');
        print('NIM: ${values["NIM"]}');
        print('Nilai: ${values["Nilai"]}');
        print('Resume: ${values["Resume"]}');
        print('-------------------------------');
      });
    } else {
      print('Tidak ada data.');
    }
  } as FutureOr Function(DatabaseEvent value)).catchError((error) {
    print('Terjadi kesalahan: $error');
  });
}


  void writeData(String nama, int nim, double nilai, String resume) {
    databaseReference.push().set({
      'Nama': nama,
      'NIM': nim,
      'Nilai': nilai,
      'Resume': resume,
    }).then((_) {
      print('Data ditambahkan.');
    }).catchError((error) {
      print('Terjadi kesalahan: $error');
    });
  }

  void updateData(String key, String nama, int nim, double nilai, String resume) {
    databaseReference.child(key).update({
      'Nama': nama,
      'NIM': nim,
      'Nilai': nilai,
      'Resume': resume,
    }).then((_) {
      print('Data diperbarui.');
    }).catchError((error) {
      print('Terjadi kesalahan: $error');
    });
  }

  void deleteData(String key) {
    databaseReference.child(key).remove().then((_) {
      print('Data dihapus.');
    }).catchError((error) {
      print('Terjadi kesalahan: $error');
    });
  }
}

class UpdateDialog extends StatelessWidget {
  final DatabaseReference databaseReference;

  UpdateDialog(this.databaseReference);

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _nilaiController = TextEditingController();
  final TextEditingController _resumeController = TextEditingController();

  void updateData(String key, String nama, int nim, double nilai, String resume) {
    databaseReference.child(key).update({
      'Nama': nama,
      'NIM': nim,
      'Nilai': nilai,
      'Resume': resume,
    }).then((_) {
      print('Data diperbarui.');
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Perbarui Data'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _namaController,
            decoration: InputDecoration(
              labelText: 'Nama',
            ),
          ),
          TextField(
            controller: _nimController,
            decoration: InputDecoration(
              labelText: 'NIM',
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: _nilaiController,
            decoration: InputDecoration(
              labelText: 'Nilai',
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: _resumeController,
            decoration: InputDecoration(
              labelText: 'Resume',
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Batal'),
        ),
        ElevatedButton(
          onPressed: () {
            String key = '0001'; // Ganti dengan key data yang ingin diperbarui
            String nama = _namaController.text;
            int nim = int.parse(_nimController.text);
            double nilai = double.parse(_nilaiController.text);
            String resume = _resumeController.text;

            updateData(key, nama, nim, nilai, resume);

            _namaController.clear();
            _nimController.clear();
            _nilaiController.clear();
            _resumeController.clear();

            Navigator.pop(context);
          },
          child: Text('Perbarui'),
        ),
      ],
    );
  }
}


class DeleteDialog extends StatelessWidget {
  final DatabaseReference databaseReference;

  DeleteDialog(this.databaseReference);

  final TextEditingController _keyController = TextEditingController();

  void deleteData(String key) {
    databaseReference.child(key).remove().then((_) {
      print('Data dihapus.');
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Hapus Data'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _keyController,
            decoration: InputDecoration(
              labelText: 'Key Data',
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Batal'),
        ),
        ElevatedButton(
          onPressed: () {
            String key = _keyController.text;

            deleteData(key);

            _keyController.clear();

            Navigator.pop(context);
          },
          child: Text('Hapus'),
        ),
      ],
    );
  }
}