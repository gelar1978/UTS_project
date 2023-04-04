import 'package:flutter/material.dart';

import 'data.dart' as data;
import 'hal1101204011.dart';
import 'hal8780030.dart';

void main() {
  runApp(const Hal1());
}

class Hal1 extends StatefulWidget {
  const Hal1({super.key});
  @override
  State<Hal1> createState() => _Hal1State();
}

class _Hal1State extends State<Hal1> {
// data[]
  String _message = '';

// Map<int, String> Nama=Data.
  // TextEditingController _textEditingController0 = TextEditingController();
  List<int> NIM = data.datamhs.keys.toList();
  List<String> Nama = data.datamhs.values.toList();
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View with CircleAvatar'),
        ),
        body: ListView.builder(
          itemCount: NIM.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () async {
                if (NIM[index] == 8780030) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal8780030(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101204011) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101204011(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                }
              },
              leading: CircleAvatar(
                child: Text(Nama[index].substring(0, 1)),
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
