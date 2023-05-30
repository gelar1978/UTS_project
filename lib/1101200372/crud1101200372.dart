import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get_storage/get_storage.dart';

class crud1101200372 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: CRUD(),
    );
  }
}

class CRUD extends StatefulWidget {
  @override
  _CRUDState createState() => _CRUDState();
}

class _CRUDState extends State<CRUD> {
  late DatabaseReference _databaseRef;
  List<Map<dynamic, dynamic>> _dataList = [];

  // @override
  void initState() {
    super.initState();
    _databaseRef = FirebaseDatabase.instance.ref().child('1101200372');
    _databaseRef.onValue.listen((DatabaseEvent event) {
      _dataList = event.snapshot.value as List<Map>;
      _updateData(_dataList as Map);
    });
  }

  void _addData() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String? nama;
        int? nim;
        int? nilai;
        String? resume;

        return AlertDialog(
          title: Text('Add Data'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nama'),
                onChanged: (value) => nama = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'NIM'),
                keyboardType: TextInputType.number,
                onChanged: (value) => nim = int.tryParse(value),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Nilai'),
                keyboardType: TextInputType.number,
                onChanged: (value) => nilai = int.tryParse(value),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Resume'),
                onChanged: (value) => resume = value,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                _databaseRef.push().set({
                  'Nama': nama,
                  'NIM': nim,
                  'Nilai': nilai,
                  'Resume': resume,
                });
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _updateData(Map<dynamic, dynamic> data) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String nama = data['Nama'];
        int? nim = data['NIM'];
        int? nilai = data['Nilai'];
        String resume = data['Resume'];

        return AlertDialog(
          title: Text('Update Data'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nama'),
                onChanged: (value) => nama = value,
                controller: TextEditingController(text: nama),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'NIM'),
                keyboardType: TextInputType.number,
                onChanged: (value) => nim = int.tryParse(value),
                controller: TextEditingController(text: nim.toString()),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Nilai'),
                keyboardType: TextInputType.number,
                onChanged: (value) => nilai = int.tryParse(value),
                controller: TextEditingController(text: nilai.toString()),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Resume'),
                onChanged: (value) => resume = value,
                controller: TextEditingController(text: resume),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                _databaseRef.set({
                  'Nama': nama,
                  'NIM': nim,
                  'Nilai': nilai,
                  'Resume': resume,
                });
                Navigator.of(context).pop();
              },
              child: Text('Update'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _deleteData() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Data'),
          content: Text('Are you sure you want to delete this data?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                _databaseRef.remove();
                Navigator.of(context).pop();
              },
              child: Text('Delete'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Demo'),
      ),
      body: ListView.builder(
        itemCount: _dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_dataList[index]['Nama']),
            subtitle: Text('NIM: ${_dataList[index]['NIM']}'),
            trailing: Text('Nilai: ${_dataList[index]['Nilai']}'),
            onTap: () {
              _updateData(_dataList[index]);
            },
            onLongPress: _deleteData,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addData,
        tooltip: 'Add Data',
        child: Icon(Icons.add),
      ),
    );
  }
}
