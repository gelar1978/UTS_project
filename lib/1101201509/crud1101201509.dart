import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Student {
  String nama;
  int nim;
  double nilai;
  String resume;

  Student(this.nama, this.nim, this.nilai, this.resume);

  Map<String, dynamic> toJson() {
    return {
      'nama': nama,
      'nim': nim,
      'nilai': nilai,
      'resume': resume,
    };
  }
}

class crud1101201509 extends StatefulWidget {
  @override
  _crud1101201509State createState() => _crud1101201509State();
}

class _crud1101201509State extends State<crud1101201509> {
  final referenceDatabase =
      FirebaseDatabase.instance.reference().child('1101201509');
  List<Student> students = [];
  TextEditingController namaController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController nilaiController = TextEditingController();
  TextEditingController resumeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().then((value) {
      // getData();
    });
  }

  // void getData() {
  //   referenceDatabase.once().then((DataSnapshot snapshot) {
  //     setState(() {
  //       students.clear();
  //       Map<dynamic, dynamic> values = snapshot.value;
  //       values.forEach((key, values) {
  //         students.add(Student(
  //           values['nama'],
  //           values['nim'],
  //           values['nilai'],
  //           values['resume'],
  //         ));
  //       });
  //     });
  //   });
  // }

  void createData() {
    Student student = Student(
      namaController.text,
      int.parse(nimController.text),
      double.parse(nilaiController.text),
      resumeController.text,
    );

    referenceDatabase.push().set(student.toJson()).then((value) {
      setState(() {
        namaController.clear();
        nimController.clear();
        nilaiController.clear();
        resumeController.clear();
      });
      // getData();
    });
  }

  void updateData(Student student) {
    student.nama = namaController.text;
    student.nim = int.parse(nimController.text);
    student.nilai = double.parse(nilaiController.text);
    student.resume = resumeController.text;

    referenceDatabase
        .child(student.nim.toString())
        .set(student.toJson())
        .then((value) {
      setState(() {
        namaController.clear();
        nimController.clear();
        nilaiController.clear();
        resumeController.clear();
      });
      // getData();
    });
  }

  void deleteData(Student student) {
    referenceDatabase.child(student.nim.toString()).remove().then((value) {
      setState(() {
        namaController.clear();
        nimController.clear();
        nilaiController.clear();
        resumeController.clear();
      });
      // getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: namaController,
              decoration: InputDecoration(
                labelText: 'Nama',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: nimController,
              decoration: InputDecoration(
                labelText: 'NIM',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: nilaiController,
              decoration: InputDecoration(
                labelText: 'Nilai',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: resumeController,
              decoration: InputDecoration(
                labelText: 'Resume',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: createData,
                child: Text('Tambah Data'),
              ),
              ElevatedButton(
                onPressed: () {
                  Student selectedStudent = students.firstWhere(
                    (student) => student.nim == int.parse(nimController.text),
                    // orElse: () => null,
                  );
                  if (selectedStudent != null) {
                    updateData(selectedStudent);
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text('Data tidak ditemukan'),
                          actions: [
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text('Update Data'),
              ),
              ElevatedButton(
                onPressed: () {
                  Student selectedStudent = students.firstWhere(
                    (student) => student.nim == int.parse(nimController.text),
                    // orElse: () => null,
                  );
                  if (selectedStudent != null) {
                    deleteData(selectedStudent);
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text('Data tidak ditemukan'),
                          actions: [
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text('Delete Data'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(students[index].nama),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NIM: ${students[index].nim}'),
                      Text('Nilai: ${students[index].nilai}'),
                      Text('Resume: ${students[index].resume}'),
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

void main() {
  runApp(MaterialApp(
    home: crud1101201509(),
  ));
}
