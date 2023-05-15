import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/1101194190/login1101194190.dart';
import 'package:flutter_application_1/1101200196/hal1101200196.dart';
import 'package:flutter_application_1/1101201509/login1101201509.dart';
import 'package:flutter_application_1/1101202016/login1101202016.dart';
import 'package:flutter_application_1/1101202469/login1101202469.dart';
import 'package:flutter_application_1/1101202505/login1101202505.dart';
import 'package:flutter_application_1/1101202549/login1101202549.dart';
import 'package:flutter_application_1/1101204132/login1101204132.dart';
import 'package:flutter_application_1/1101204197/login1101204197.dart';
import 'package:flutter_application_1/1101204257/login1101204257.dart';
import 'package:flutter_application_1/1101204403/login1101204403.dart';
import 'package:flutter_application_1/hal1101190144.dart';

import 'data.dart' as data;
import '1108780030/login1108780030.dart';
import 'hal1101180517.dart';
import 'hal1101190002.dart';
import '1101190196/hal1101190196.dart';
import '1101193090/hal1101193090.dart';
import 'hal1101193387.dart';
import '1101194080/hal1101194080.dart';
import '1101194190/hal1101194190.dart';
import 'hal1101194298.dart';
import 'hal1101194477.dart';
// <<<<<<< Updated upstream
import '1101200196/hal1101200196.dart';
// =======
// import 'hal1101200196.dart';
// <<<<<<< HEAD
// >>>>>>> Stashed changes
import '1101200372/hal1101200372.dart';
import '1101201512/hal1101201512.dart';
import '1101202016/hal1101202016.dart';
import '1101200372/login1101200372.dart';
import '1101201512/hal1101201512.dart';
import '1101202016/hal1101202016.dart';
import '1101202469/hal1101202469.dart';
import '1101204011/login1101204011.dart';
import '1101204104/hal1101204104.dart';
import '1101204132/hal1101204132.dart';
import '1101204173/hal1101204173.dart';
import '1101204197/hal1101204197.dart';
import '1101204257/hal1101204257.dart';
import '1101204403/hal1101204403.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: 'recaptcha-v3-site-key',
    androidProvider: AndroidProvider.debug,
  );
  runApp(const Hal1());
}
// void main() {
//   // WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   runApp(const Hal1());
// }

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
                } else if (NIM[index] == 1101190144) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101190144(),
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
                  // final result = await Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => hal1101190196(),
                  //   ),
                  // );
                  // setState(() {
                  //   _message = result ?? '';
                  // });
                } else if (NIM[index] == 1101193090) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101193090old(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101194080) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101194080old(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101194190) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101194190new(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101194298) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101194298old(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101200196) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101200196old(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101200372) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101200372new(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101201509) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101201509new(),
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
                      builder: (context) => hal1101202016new(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101202505) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101202505new(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101202549) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101202549new(),
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
                      builder: (context) => hal1101204132new(),
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
                      builder: (context) => hal1101204197new(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101204257) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101204257new(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101204403) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101204403new(),
                    ),
                  );
                  setState(() {
                    _message = result ?? '';
                  });
                } else if (NIM[index] == 1101202469) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hal1101202469new(),
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
