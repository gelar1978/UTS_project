import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//HALAMAN KE-1
// class hal1101204173 extends StatelessWidget {
class hal1101204173old extends StatefulWidget {
  // final String message;
  hal1101204173old({super.key});
  TextEditingController _textEditingController = TextEditingController();
  var akhir = '';
  @override
  State<hal1101204173old> createState() => page1oldState();
}

class page1oldState extends State<hal1101204173old> {
  final TextEditingController _textEditingController = TextEditingController();
  var akhir = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Sri Wahyuni Asmur - Page 01'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://anaktelkom.com/wp-content/uploads/2021/08/Logo-Telkom-University-900x1024.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        hintText: 'Masukkan 7 Digit NIM Pertama Anda',
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.greenAccent)),
                              child: Text('Halaman Utama'),
                              onPressed: () {
                                Navigator.pop(
                                    context, _textEditingController.text);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.greenAccent)),
                                child: Text('Selanjutnya'),
                                onPressed: () async {
                                  String nim = _textEditingController.text;
                                  if (nim == 1101204.toString()) {
                                    final result = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => page2(
                                                nim_mahasiswa: nim,
                                              )),
                                    );
                                    setState(() {
                                      akhir = result ?? '';
                                    });
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: ((context) {
                                          return AlertDialog(
                                            title: Text('!! Warning !!'),
                                            content: Text(
                                                'NIM yang Anda Masukkan Salah'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop(akhir);
                                                },
                                                child: Text('OK'),
                                              )
                                            ],
                                          );
                                        }));
                                  }
                                }),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("NIM/No. Telp."),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), //or 15.0
                child: Container(
                  height: 70.0,
                  width: 370.0,
                  color: Color(0xff76f5ae),
                  child: Center(
                      child: Text(
                    akhir,
                    style: TextStyle(fontSize: 28),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//  HALAMAN KE-2
class page2 extends StatefulWidget {
  final String nim_mahasiswa;
  page2({required this.nim_mahasiswa});
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  TextEditingController email = TextEditingController();
  TextEditingController nomor = TextEditingController();
  TextEditingController digitnim = TextEditingController();
  String nim = '';
  var akhir = '';

  @override
  void initState() {
    super.initState();
    nim = widget.nim_mahasiswa;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Sri Wahyuni Asmur - Page 02'),
      ),
      body: ListView(children: [
        Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      icon: Icon(Icons.mail_outline),
                      hintText: 'Masukkan Alamat Email Anda',
                      // border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: nomor,
                    decoration: InputDecoration(
                      icon: Icon(Icons.phone_android),
                      hintText: 'Masukkan No Handphone Anda',
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: digitnim,
                    decoration: InputDecoration(
                      icon: Icon(Icons.key),
                      hintText: 'Masukkan digit ke-8 NIM Anda',
                    ),
                  ),
                  // Text('$message'),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.greenAccent)),
                            child: Text('Review Halaman'),
                            onPressed: () {
                              Navigator.pop(context, akhir);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.greenAccent)),
                            child: Text('Selanjutnya'),
                            onPressed: () async {
                              if (digitnim.text == 1.toString()) {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => page3(
                                      emailfix: email.text,
                                      nomorfix: nomor.text,
                                      nimfix:
                                          widget.nim_mahasiswa + digitnim.text,
                                    ),
                                  ),
                                );
                                setState(() {
                                  akhir = result ?? '';
                                });
                              } else {
                                showDialog(
                                    context: context,
                                    builder: ((context) {
                                      return AlertDialog(
                                        title: Text('!! Warning !!'),
                                        content: Text(
                                            'NIM yang Anda Masukkan Salah'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop(akhir);
                                            },
                                            child: Text('OK'),
                                          )
                                        ],
                                      );
                                    }));
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("NIM/No. Telp."),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0), //or 15.0
              child: Container(
                height: 70.0,
                width: 370.0,
                color: Colors.greenAccent,
                child: Center(
                    child: Text(
                  akhir,
                  style: TextStyle(fontSize: 28),
                )),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

//HALAMAN KE-3
class page3 extends StatefulWidget {
  final String emailfix;
  final String nomorfix;
  final String nimfix;

  page3({required this.emailfix, required this.nomorfix, required this.nimfix});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  TextEditingController digitNIM = TextEditingController();
  var akhir = '';
  String nim1 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text('Sri Wahyuni Asmur - Page 03'),
        ),
        body: ListView(children: [
          Column(
            children: [
              Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(
                        'lib/images/sriasmur.jpg'), // gambar dari assets
                  ),
                  Text(
                    '${widget.emailfix}',
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    '${widget.nomorfix}',
                    style: TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    controller: digitNIM,
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    decoration: InputDecoration(
                      labelText: 'Masukkan 2 Digit NIM Terakhir Anda',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.greenAccent)),
                              child: Text('Review Halaman'),
                              onPressed: () {
                                Navigator.pop(context, akhir);
                              }),
                        ),
                        SizedBox(height: 16.0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.greenAccent)),
                            child: Text('Selanjutnya'),
                            onPressed: () async {
                              String digit = digitNIM.text;
                              if (digit == '73') {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => page4(
                                      emailFinal: widget.emailfix,
                                      phoneFinal: widget.nomorfix,
                                      nimFinal: widget.nimfix + digitNIM.text,
                                    ),
                                  ),
                                );
                                setState(() {
                                  akhir = result ?? '';
                                });
                              } else {
                                showDialog(
                                    context: context,
                                    builder: ((context) {
                                      return AlertDialog(
                                        title: Text('!! Warnig !!'),
                                        content: Text(
                                            'NIM yang Anda Masukkan Salah'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop(akhir);
                                            },
                                            child: Text('OK'),
                                          )
                                        ],
                                      );
                                    }));
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("NIM/No. Telp."),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0), //or 15.0
                    child: Container(
                      height: 70.0,
                      width: 370.0,
                      color: Color(0xff76f5ae),
                      child: Center(
                          child: Text(
                        akhir,
                        style: TextStyle(fontSize: 28),
                      )),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ]));
  }
}

//HALAMAN KE-4
class page4 extends StatefulWidget {
  final String emailFinal;
  final String phoneFinal;
  final String nimFinal;

  page4(
      {required this.emailFinal,
      required this.phoneFinal,
      required this.nimFinal});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    List<String> nimList = widget.nimFinal.split('');
    List<String> phoneList = widget.phoneFinal.split('');
    var akhir = widget.nimFinal + '/' + widget.phoneFinal;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sri Wahyuni Asmur - Page 04'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: [
          Column(children: [
            Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  '${widget.nimFinal} / ${widget.phoneFinal}',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5),
                  itemCount: nimList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Color.fromRGBO(Random().nextInt(256),
                          Random().nextInt(256), Random().nextInt(256), 1),
                      child: Center(
                        child: Text(nimList[index]),
                      ),
                    );
                  },
                ),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5),
                  itemCount: phoneList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Color.fromRGBO(Random().nextInt(256),
                          Random().nextInt(256), Random().nextInt(256), 1),
                      child: Center(
                        child: Text(phoneList[index]),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.greenAccent)),
                  child: Text('Review Halaman'),
                  onPressed: () {
                    Navigator.pop(context, akhir);
                  },
                ),
              ],
            ))
          ])
        ],
      ),
    );
  }
}
