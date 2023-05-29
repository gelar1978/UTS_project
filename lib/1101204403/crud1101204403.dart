import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(crud1101204403());
}

class crud1101204403 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Firebase Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late DatabaseReference databaseReference;

  @override
  void initState() {
    super.initState();
    databaseReference = FirebaseDatabase.instance.reference();
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _nilaiController = TextEditingController();
  final TextEditingController _resumeController = TextEditingController();

  void createData() {
    databaseReference.child('1101204403').child('0001').set({
      'Nama': _nameController.text,
      'NIM': int.parse(_nimController.text),
      'Nilai': double.parse(_nilaiController.text),
      'Resume': _resumeController.text,
    });
  }

  void updateData() {
    databaseReference.child('1101204403').child('0001').update({
      'Nama': _nameController.text,
      'NIM': int.parse(_nimController.text),
      'Nilai': double.parse(_nilaiController.text),
      'Resume': _resumeController.text,
    });
  }

  void deleteData() {
    databaseReference.child('1101204403').child('0001').remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nama'),
              
            ),
            TextField(
              controller: _nimController,
              decoration: InputDecoration(labelText: 'NIM'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _nilaiController,
              decoration: InputDecoration(labelText: 'Nilai'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _resumeController,
              decoration: InputDecoration(labelText: 'Resume'),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Create'),
                  onPressed: createData,
                ),
                ElevatedButton(
                  child: Text('Update'),
                  onPressed: updateData,
                ),
                ElevatedButton(
                  child: Text('Delete'),
                  onPressed: deleteData,
                ),
              ],
            ),
            // // SizedBox(height: 16.0),
            // // Expanded(
            // //   child: StreamBuilder<Event>(
            // //     stream:
            // //         databaseReference.child('1101204403').child('0001').onValue,
            // //     builder: (context, snapshot) {
            // //       if (snapshot.hasData &&
            // //           snapshot.data!.snapshot.value != null) {
            // //         var data = snapshot.data!.snapshot.value;
            // //         return ListView.builder(
            // //           itemCount: data.length,
            // //           itemBuilder: (BuildContext context, int index) {
            // //             return ListTile(
            // //               title: Text('Nama: ${data['Nama']}'),
            // //               subtitle: Column(
            // //                 crossAxisAlignment: CrossAxisAlignment.start,
            // //                 children: [
            // //                   Text('NIM: ${data['NIM']}'),
            // //                   Text('Nilai: ${data['Nilai']}'),
            // //                   Text('Resume: ${data['Resume']}'),
            // //                 ],
            // //               ),
            // //             );
            // //           },
            // //         );
            // //       } else {
            // //         return Center(child: Text('No data available'));
            // //       }
            // //     },
            // //   ),
            // ),
          ],
        ),
      ),
    );
  }
}