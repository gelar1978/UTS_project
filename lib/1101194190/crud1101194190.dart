import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class crud1101194190 extends StatefulWidget {
  @override
  _crud1101194190State createState() => _crud1101194190State();
}

class _crud1101194190State extends State<crud1101194190> {
  final databaseReference = FirebaseDatabase.instance.ref('1101194190');
  List<Data> dataList = [];

  final namaController = TextEditingController();
  final nimController = TextEditingController();
  final nilaiController = TextEditingController();
  final resumeController = TextEditingController();

  // String get valueKey => null;

  // @override
  // void initState() {
  //   super.initState();
  //   // getData();
  //   // }
  //   late DataSnapshot snapshot;
  //   Future<void> getData() async {
  //     await databaseReference.once().then((snapshot) {
  //       if (snapshot.snapshot.value != null) {
  //         dataList.clear();
  //         Map<dynamic, dynamic> values = snapshot.snapshot.value;
  //         values.forEach((key, values) {
  //           dataList.add(Data(
  //             key,
  //             values['nama'],
  //             values['nim'],
  //             values['nilai'].toDouble(),
  //             values['resume'],
  //           ));
  //         });
  //       }
  //     });
  //     setState(() {});
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // database = FirebaseDatabase.instance.ref().child('tabel');
    // Membaca data dari Firebase Realtime Database
    // DataSnapshot snapshot;
    // databaseReference.once().then((snapshot) {
    //   setState(() {
    //     dataList.clear();
    //     ReadWriteValue<DatabaseEvent> values = snapshot.val(valueKey);
    //     values.forEach((key, value) {
    //       dataList.add(Map<String, dynamic>.from(value));
    //     });
    //   });
    // });
  }

  late DataSnapshot snapshot;
  // readData() async {
  //   DatabaseEvent event = await databaseReference.once();
  //   var x = event.snapshot.value;
  //   print(x.val('0001'));
  //   return x;
  // }

  void readData() async {
    Stream<DatabaseEvent> stream = databaseReference.onValue;

// Subscribe to the stream!
    stream.listen((DatabaseEvent event) {
      print('Event Type: ${event.type}'); // DatabaseEventType.value;
      print('Snapshot: ${event.snapshot.child('0001').value}'); // DataSnapshot
    });
  }

  void writeData(String nama, int nim, double nilai, String resume) {
    databaseReference.child('0002').set({
      'nama': nama,
      'nim': nim,
      'nilai': nilai,
      'resume': resume,
    }).asStream();
  }

  void updateData(
      String key, String nama, int nim, double nilai, String resume) {
    databaseReference.child('0002').update({
      'nama': nama,
      'nim': nim,
      'nilai': nilai,
      'resume': resume,
    }).asStream();
  }

  void deleteData(String key) {
    databaseReference.child('0001').remove().then((_) {
      // getData();
      clearFields();
    });
  }

  void clearFields() {
    namaController.clear();
    nimController.clear();
    nilaiController.clear();
    resumeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Realtime Database'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  controller: namaController,
                  decoration: InputDecoration(labelText: 'Nama'),
                ),
                TextField(
                  controller: nimController,
                  decoration: InputDecoration(labelText: 'NIM'),
                ),
                TextField(
                  controller: nilaiController,
                  decoration: InputDecoration(labelText: 'Nilai'),
                ),
                TextField(
                  controller: resumeController,
                  decoration: InputDecoration(labelText: 'Resume'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        readData();
                        // print(x);
                        // writeData(
                        //   namaController.text,
                        //   int.parse(nimController.text),
                        //   double.parse(nilaiController.text),
                        //   resumeController.text,
                        // );
                      },
                      child: Text('Tambah Data'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // print(dataList[0].key);
                        updateData(
                          "0002",
                          namaController.text,
                          int.parse(nimController.text),
                          double.parse(nilaiController.text),
                          resumeController.text,
                        );
                      },
                      child: Text('Update Data'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        deleteData(dataList[0].key);
                      },
                      child: Text('Hapus Data'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: dataList.length == 0
                ? Center(child: Text('Tidak ada data'))
                : ListView.builder(
                    itemCount: dataList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(dataList[index].nama),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('NIM: ${dataList[index].nim}'),
                            Text('Nilai: ${dataList[index].nilai}'),
                            Text('Resume: ${dataList[index].resume}'),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class Data {
  final String key;
  final String nama;
  final int nim;
  final double nilai;
  final String resume;

  Data(this.key, this.nama, this.nim, this.nilai, this.resume);
}
