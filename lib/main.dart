import 'package:flutter/material.dart';
// import 'package:flutter_application_1/1108780030/hal1108780030.dart';

// import '1108780030/login1108780030.dart';
// import '1108780030/hal1108780030.dart';
import '1108780030/login1108780030.dart';
import 'data.dart' as data;
import 'hal1101180517.dart';
import 'hal1101190002.dart';
import 'hal1101190196.dart';
import 'hal1101193090.dart';
import 'hal1101193387.dart';
import '1101194080/hal1101194080.dart';
import '1101194190/hal1101194190.dart';
import 'hal1101194298.dart';
import 'hal1101194477.dart';
import 'hal1101200196.dart';
import '1101200372/hal1101200372.dart';
import 'hal1101201509.dart';
import '1101201512/hal1101201512.dart';
import '1101202016/hal1101202016.dart';
import 'hal1101202469.dart';
import 'hal1101202505.dart';
import 'hal1101202549.dart';
import '1101204011/login1101204011.dart';
import 'hal1101204104.dart';
import '1101204132/hal1101204132.dart';
import 'hal1101204173.dart';
import '1101204197/hal1101204197.dart';
import 'hal1101204257.dart';
import 'hal1101204403.dart';
// import '1108780030/hal1108780030.dart';

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
                if (NIM[index] == 1108780030) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1108780030new(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101180517) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101180517(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101190002) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101190002(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101190142) {
                  // final result = await Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => hal1101190142(),
                  //   ),
                  // );
                  // setState(() {
                  //   _message = result ?? '';
                  // });
                } else if (NIM[index] == 1101190196) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101190196(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101193090) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101193090(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101194080) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101194080(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101194190) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101194190(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101194298) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101194298(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101200196) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101200196(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101200372) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101200372(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101201509) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101201509(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101201512) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101201512(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101202016) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101202016(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101202505) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101202505(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101202549) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101202549(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101204011) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101204011new(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101204104) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101204104(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101204132) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101204132(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101204173) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101204173(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101204197) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101204197(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101204257) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101204257(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101204403) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101204403(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101202469) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101202469(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101193387) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101193387(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101194477) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101194477(),
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
