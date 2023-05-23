// ignore_for_file: unused_field, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'user1101200372.dart' as data1101200372;

class View1101200372 extends StatefulWidget {
  const View1101200372({super.key});
  @override
  State<View1101200372> createState() => _View1101200372State();
}

class _View1101200372State extends State<View1101200372> {
// data[]
  final String _message = '';

// Map<int, String> Nama=Data.
  // TextEditingController _textEditingController0 = TextEditingController();
  List<int> NIM = data1101200372.index.values.toList();
  List<String> Nama = data1101200372.nama.values.toList();
  // @overrides
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View with CircleAvatar'),
          backgroundColor: Colors.redAccent,
        ),
        body: ListView.builder(
          itemCount: NIM.length,
          itemBuilder: (context, index) {
            return ListTile(
              // onTap: () async {
              //   final result = await Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => hal1101200372new(),
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
