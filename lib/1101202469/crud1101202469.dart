import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class crud1101202469 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final databaseReference = FirebaseDatabase.instance.ref("1101202469");
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String nama = '';
  int nim = 0;
  double nilai = 0.0;
  String resume = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Firebase'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama',
              ),
              onChanged: (value) {
                setState(() {
                  nama = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'NIM',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  nim = int.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nilai',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  nilai = double.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Resume',
              ),
              onChanged: (value) {
                setState(() {
                  resume = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text('Baca'),
                  onPressed: () {
                    // readData();
                  },
                ),
                ElevatedButton(
                  child: Text('Tambah'),
                  onPressed: () {
                    addData();
                  },
                ),
                ElevatedButton(
                  // child: Text('Update'),
                  // onPressed: ()
                  child: Text('Update'),
                  onPressed: () {
                    updateData();
                  },
                ),
                ElevatedButton(
                  child: Text('Hapus'),
                  onPressed: () {
                    deleteData();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // void readData() {
  //   databaseReference
  //       .child('tabel')
  //       .child('1101204257')
  //       .once()
  //       .then((DataSnapshot snapshot) {
  //     if (snapshot.value != null) {
  //       setState(() {
  //         nama = snapshot.value['Nama'];
  //         nim = snapshot.value['NIM'];
  //         nilai = snapshot.value['Nilai'];
  //         resume = snapshot.value['Resume'];
  //       });
  //     } else {
  //       setState(() {
  //         nama = '';
  //         nim = 0;
  //         nilai = 0.0;
  //         resume = '';
  //       });
  //     }
  //   });
  void addData() {
    databaseReference.child('1101202469').set({
      'Nama': nama,
      'NIM': nim,
      'Nilai': nilai,
      'Resume': resume,
    });
  }

  void updateData() {
    databaseReference.child('tabel').child('1101202469').update({
      'Nama': nama,
      'NIM': nim,
      'Nilai': nilai,
      'Resume': resume,
    });
  }

  void deleteData() {
    databaseReference.child('tabel').child('1101202469').remove();
  }
}