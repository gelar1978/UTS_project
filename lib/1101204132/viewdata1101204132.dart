import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'user1101204132.dart' as data1101204132;

class View1101204132 extends StatefulWidget {
  const View1101204132({super.key});
  @override
  State<View1101204132> createState() => _View1101204132State();
}

class _View1101204132State extends State<View1101204132> {
// data[]
  String _message = '';

// Map<int, String> Nama=Data.
  // TextEditingController _textEditingController0 = TextEditingController();
  List<int> NIM = data1101204132.index.values.toList();
  List<String> Nama = data1101204132.nama.values.toList();
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
              //       builder: (context) => hal1101204132new(),
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
