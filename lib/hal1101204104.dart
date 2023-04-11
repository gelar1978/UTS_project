import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class hal1101204104 extends StatefulWidget {
  hal1101204104({super.key});

  @override
  State<hal1101204104> createState() => _hal1101204104State();
}

class _hal1101204104State extends State<hal1101204104> {
  final TextEditingController _textEditingController = TextEditingController();
  String _massage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Naufal Nur irawan/Page-1'),
        titleTextStyle: TextStyle(fontFamily: 'Times New Roman'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  // color: Colors.red.withOpacity(0.1),
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
                        icon: Icon(Icons.app_registration_sharp),
                        hintText: 'Ketikkan 7 digit pertama NIM anda',
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
                              child: Text('Main Page'),
                              onPressed: () {
                                Navigator.pop(
                                    context, _textEditingController.text);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              child: Text('Next Page'),
                              onPressed: () async {
                                if (_textEditingController.text ==
                                    1101204.toString()) {
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => hal1101204104_2(
                                          msg1: _textEditingController.text),
                                    ),
                                  );
                                  setState(() {
                                    _massage = result ?? '';
                                  });
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
                child: Text("NIM/Email : "),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), //or 15.0
                child: Container(
                  height: 70.0,
                  width: 370.0,
                  color: Color(0xffFF0E58),
                  child: Center(
                      child: Text(
                    _massage,
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

class hal1101204104_2 extends StatefulWidget {
  // hal1101204104_2({super.key,required this.msg1});
  String msg1 = '';
  hal1101204104_2({super.key, required this.msg1});
  @override
  _hal1101204104_2State createState() => _hal1101204104_2State();
}

class _hal1101204104_2State extends State<hal1101204104_2> {
  String NIM5angka = '';
  TextEditingController _textEditingController0 = TextEditingController();
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  String _massage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Naufal Nur Irawan/Page-2'),
        titleTextStyle: TextStyle(fontFamily: 'Times New Roman'),
      ),
      body: ListView(
        children: [
          //Silakan lanjutkan........................
          Column(
            children: [
              SizedBox(
                height: 20,
                width: 20,
              ),
              TextField(
                controller: _textEditingController0,
                decoration: InputDecoration(
                  icon: Icon(Icons.mail_outline),
                  hintText: 'Ketik dong Alamat emailnya kak!',
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              TextField(
                controller: _textEditingController1,
                decoration: InputDecoration(
                  icon: Icon(Icons.phone_iphone_outlined),
                  hintText: 'Boleh minta nomor HP nya kak?, ketik disini ',
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              TextField(
                controller: _textEditingController2,
                decoration: InputDecoration(
                  icon: Icon(Icons.numbers_outlined),
                  hintText: 'ketik digit ke-8 NIMnya dong disini!',
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text('Previous Page'),
                        onPressed: () {
                          Navigator.pop(context, _massage);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text('Next Page'),
                        onPressed: () async {
                          if (_textEditingController2.text == 1.toString()) {
                            String NIM5angka =
                                '${widget.msg1}' + _textEditingController2.text;
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => hal1101204104_3(
                                  msg1: NIM5angka,
                                  msg2: _textEditingController0.text,
                                  msg3: _textEditingController1.text,
                                ),
                              ),
                            );
                            setState(() {
                              _massage = result ?? '';
                            });
                            ;
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
                child: Text("NIM/Email :"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  height: 70.0,
                  width: 370.0,
                  color: Color(0xffFF0E58),
                  child: Center(
                      child: Text(
                    _massage,
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

class hal1101204104_3 extends StatefulWidget {
  // hal1101204104_2({super.key,required this.msg1});
  hal1101204104_3({required this.msg1, required this.msg2, required this.msg3});

  String msg1 = '';
  String msg2 = '';
  String msg3 = '';

  @override
  _hal1101204104_3State createState() => _hal1101204104_3State();
}

class _hal1101204104_3State extends State<hal1101204104_3> {
  String NIM10angka = '';
  String nomorHP = '';
  TextEditingController _textEditingController3 = TextEditingController();
  String _massage = '';

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Naufal Nur Irawan/Page-3'),
        titleTextStyle: TextStyle(fontFamily: 'Times New Roman'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('lib/images/nau1.jpeg'),
                      radius: 100,
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Center(child: Text('${widget.msg2}')),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Center(child: Text('${widget.msg3}')),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      controller: _textEditingController3,
                      decoration: InputDecoration(
                        icon: Icon(Icons.nature_people_outlined),
                        hintText: 'Masukkan digit ke-9 dan 10 NIM masbro!',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              child: Text('Previous Page'),
                              onPressed: () {
                                Navigator.pop(context, _massage);
                              },
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                child: Text('Next Page'),
                                onPressed: () async {
                                  if (_textEditingController3.text == '04') {
                                    String NIM10angka = '${widget.msg1}' +
                                        _textEditingController3.text;
                                    String nomorHP = '${widget.msg2}';
                                    final result = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => hal1101204104_4(
                                          msg1: NIM10angka,
                                          msg2: nomorHP,
                                          msg3: _textEditingController3.text,
                                        ),
                                      ),
                                    );
                                    setState(() {
                                      _massage = result ?? '';
                                    });
                                  }
                                },
                              )),
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
                child: Text("NIM/Email : "),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  height: 70.0,
                  width: 370.0,
                  color: Color(0xffFF0E58),
                  child: Center(
                      child: Text(
                    _massage,
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

class hal1101204104_4 extends StatefulWidget {
  // hal1101204104_2({super.key,required this.msg1});
  hal1101204104_4(
      {super.key, required this.msg1, required this.msg2, required this.msg3});
  String msg1 = '';
  String msg2 = '';
  String msg3 = '';

  @override
  _hal1101204104_4State createState() => _hal1101204104_4State();
}

class _hal1101204104_4State extends State<hal1101204104_4> {
  @override
  Widget build(BuildContext context) {
    String fullmsg = '${widget.msg1}/${widget.msg2}';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Naufal Nur Irawan/Page-4'),
        titleTextStyle: TextStyle(fontFamily: 'Times New Roman'),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    '${widget.msg1} / ${widget.msg2}',
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          child: Text('Previous Page'),
                          onPressed: () {
                            Navigator.pop(context, fullmsg);
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                children: [
                  GridView.count(
                    crossAxisCount: 6,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(0),
                    children: List.generate(fullmsg.length, (index) {
                      return Container(
                        height: 1,
                        child: Card(
                          color: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                          child: Center(
                            child: Text(
                              fullmsg[index],
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black87,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
