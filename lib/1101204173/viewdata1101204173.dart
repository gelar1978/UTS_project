import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'user1101204173.dart' as data1101204173;

class View1101204173 extends StatefulWidget {
  const View1101204173({super.key});
  @override
  State<View1101204173> createState() => _View1101204173State();
}

class _View1101204173State extends State<View1101204173> {
// data[]
  String _message = '';

// Map<int, String> Nama=Data.
  // TextEditingController _textEditingController0 = TextEditingController();
  List<int> NIM = data1101204173.index.values.toList();
  List<String> Nama = data1101204173.nama.values.toList();
  // @overrides
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View with CircleAvatar'),
        ),
        body: ListView.builder(
          itemCount: NIM.length,
          itemBuilder: (context, index) {
            return ListTile(
              // onTap: () async {
              //   final result = await Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => hal1108780030new(),
              //     ),
              //   );
              //   setState(() {
              //     _message = result ?? '';
              //   });
              // },
              trailing: CircleAvatar(
                child: Text(Nama[index]),
                // backgroundColor: Colors,
                // backgroundImage: NetworkImage(Nama[index]),
              ),
              leading: CircleAvatar(
                child: Text(NIM[index].toString()),
                // backgroundColor: Colors,
                // backgroundImage: NetworkImage(Nama[index]),
              ),
              title: Text(Nama[index]),
              subtitle: Text(NIM[index].toString()),
            );
          },
        ),
      ),
    );
  }
}
