import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/image_upload.dart';
import 'package:flutter_application_1/services/auth_service.dart';

class hal1101204197old extends StatefulWidget {
  // final String message;
  hal1101204197old({super.key});

  @override
  State<hal1101204197old> createState() => _hal1101204197oldState();
}

class _hal1101204197oldState extends State<hal1101204197old> {
  final TextEditingController _textEditingController = TextEditingController();
  String _message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Reyhan Fajar N/Page-1'),
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
                        icon: Icon(Icons.key),
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
                                      builder: (context) => hal1101204197_2(
                                          pesan1: _textEditingController.text),
                                    ),
                                  );
                                  setState(() {
                                    _message = result ?? '';
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
                child: Text("NIM/No. Telp."),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), //or 15.0
                child: Container(
                  height: 70.0,
                  width: 390.0,
                  color: Colors.yellow,
                  child: Center(
                      child: Text(
                    _message,
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

class hal1101204197_2 extends StatefulWidget {
  // hal1101204403_2({super.key,required this.pesan1});
  String pesan1 = '';
  hal1101204197_2({super.key, required this.pesan1});
  @override
  _hal1101204197_2State createState() => _hal1101204197_2State();
}

class _hal1101204197_2State extends State<hal1101204197_2> {
  String NIM7 = '';
  TextEditingController _textEditingController0 = TextEditingController();
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Reyhan Fajar N/Page-2'),
      ),
      body: ListView(
        children: [
          //Silakan lanjutkan........................
          Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      controller: _textEditingController0,
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        hintText: 'Ketikkan Alamat Email Anda',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      controller: _textEditingController1,
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        hintText: 'Ketikkan No handphone Anda',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      controller: _textEditingController2,
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        hintText: 'Ketikkan digit ke-8 NIM Anda',
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
                                Navigator.pop(context, _message);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              child: Text('Next Page'),
                              onPressed: () async {
                                if (_textEditingController2.text ==
                                    1.toString()) {
                                  String NIM7 = '${widget.pesan1}' +
                                      _textEditingController2.text;
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => hal1101204197_3(
                                        pesan1: NIM7,
                                        pesan2: _textEditingController0.text,
                                        pesan3: _textEditingController1.text,
                                      ),
                                    ),
                                  );
                                  setState(() {
                                    _message = result ?? '';
                                  });
                                  ;
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
                  width: 390.0,
                  color: Colors.yellow,
                  child: Center(
                      child: Text(
                    _message,
                    style: TextStyle(fontSize: 28),
                  )),
                ),
              ),
              TextButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageUploads(),
                      ),
                    );
                  }),
                  child: Text("Upload Image"))
            ],
          ),
        ],
      ),
    );
  }
}

class hal1101204197_3 extends StatefulWidget {
  String pesan1 = '';
  String pesan2 = '';
  String pesan3 = '';
  hal1101204197_3(
      {super.key,
      required this.pesan1,
      required this.pesan2,
      required this.pesan3});
  @override
  _hal1101204197_3State createState() => _hal1101204197_3State();
}

class _hal1101204197_3State extends State<hal1101204197_3> {
  String NIM10 = '';
  String TLP = '';
  TextEditingController _textEditingController3 = TextEditingController();
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Reyhan Fajar N/Page-3'),
      ),
      body: ListView(
        children: [
          //Silakan lanjutkan........................
          Column(
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('lib/images/Reyhan_F.jpg'),
                      radius: 100,
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Text(
                      '${widget.pesan2}',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Text(
                      '${widget.pesan3}',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      controller: _textEditingController3,
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        hintText: 'Masukkan digit ke-9 dan ke-10 NIM anda',
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
                                Navigator.pop(context, _message);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              child: Text('Next Page'),
                              onPressed: () async {
                                if (_textEditingController3.text == '97') {
                                  String NIM10 = '${widget.pesan1}' +
                                      _textEditingController3.text;
                                  String TLP = '${widget.pesan3}';
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => hal1101204197_4(
                                        pesan1: NIM10,
                                        pesan2: TLP,
                                        pesan3: _textEditingController3.text,
                                      ),
                                    ),
                                  );
                                  setState(() {
                                    _message = result ?? '';
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
                child: Text("NIM/No. Telp."),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), //or 15.0
                child: Container(
                  height: 70.0,
                  width: 390.0,
                  color: Colors.yellow,
                  child: Center(
                      child: Text(
                    _message,
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

class hal1101204197_4 extends StatefulWidget {
  // hal1101204403_2({super.key,required this.pesan1});
  String pesan1 = '';
  String pesan2 = '';
  String pesan3 = '';
  hal1101204197_4(
      {super.key,
      required this.pesan1,
      required this.pesan2,
      required this.pesan3});
  @override
  _hal1101204197_4State createState() => _hal1101204197_4State();
}

class _hal1101204197_4State extends State<hal1101204197_4> {
  //
  @override
  Widget build(BuildContext context) {
    String allPesan = '${widget.pesan1}/${widget.pesan2}';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Reyhan Fajar N/Page-4'),
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
                    '${widget.pesan1}/${widget.pesan2}',
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
                            Navigator.pop(context, allPesan);
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
                    crossAxisCount: 5,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(0),
                    children: List.generate(allPesan.length, (index) {
                      return Container(
                        height: 1,
                        child: Card(
                          color: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                          child: Center(
                            child: Text(
                              allPesan[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                              ),
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
