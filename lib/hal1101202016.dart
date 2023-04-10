import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class hal1101202016 extends StatelessWidget {
  hal1101202016({super.key});

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Andri Satia Permana/Page-1'),
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
                        hintText: 'Ketikkan 7 digit pertama NIM anda',
                      ),
                    ),
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
                                  String nim = _textEditingController.text;
                                  if (nim == 1101202.toString()) {
                                    final result = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Page2(
                                                nim_mahasiswa: nim,
                                              )),
                                    );} 
                                }),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }}

class Page2 extends StatefulWidget {
  final String nim_mahasiswa;
  Page2({required this.nim_mahasiswa});
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  TextEditingController emailmahasiswa = TextEditingController();
  TextEditingController nomormahasiswa = TextEditingController();
  TextEditingController digitnim = TextEditingController();
  String nim = '';

  @override
  void initState() {
    super.initState();
    nim = widget.nim_mahasiswa;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Andri Satia P/Page-2'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: emailmahasiswa,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Ketikkan Alamat Email Anda',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: nomormahasiswa,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Ketikkan No Handphone Anda',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: digitnim,
              keyboardType: TextInputType.number,
              maxLength: 3,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Masukkan digit ke-8 NIM Anda',
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
                        child: Text('Previous Page'),
                        onPressed: () {
                          Navigator.pop(context, hal1101202016());
                        }),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        child: Text('Next Page'),
                        onPressed: () {
                          String digit = digitnim.text;
                          if (digit == '0') {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Page3(
                                  emailFinal: emailmahasiswa.text,
                                  nomorFinal: nomormahasiswa.text,
                                  nimFinal:
                                      widget.nim_mahasiswa + digitnim.text,
                                ),
                              ),
                            );
                          } 
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }}

class Page3 extends StatefulWidget {
  final String emailFinal;
  final String nomorFinal;
  final String nimFinal;

  Page3(
      {required this.emailFinal,
      required this.nomorFinal,
      required this.nimFinal});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  TextEditingController digitNIM = TextEditingController();

  String nim1 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Andri Satia P/Page-3'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CircleAvatar(
                radius: 130,
                backgroundImage:
                    AssetImage('lib/images/Andri.png'), 
              ),
              Text(
                '${widget.emailFinal}',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              Text(
                '${widget.nomorFinal}',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: digitNIM,
                keyboardType: TextInputType.number,
                maxLength: 2,
                decoration: InputDecoration(
                  labelText: 'Masukkan Digit ke-9 dan 10 NIM Anda',
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
                          child: Text('Previous Page'),
                          onPressed: () {
                            Navigator.pop(context, hal1101202016());
                          }),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text('Next Page'),
                        onPressed: () {
                          String digit = digitNIM.text;
                          if (digit == '16') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Page4(
                                  emailFinal: widget.emailFinal,
                                  nomorFinal: widget.nomorFinal,
                                  nimFinal: widget.nimFinal + digitNIM.text,
                                ),
                              ),
                            );
                          } 
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }}

class Page4 extends StatefulWidget {
  final String emailFinal;
  final String nomorFinal;
  final String nimFinal;

  Page4(
      {required this.emailFinal,
      required this.nomorFinal,
      required this.nimFinal});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    List<String> nimList = widget.nimFinal.split('');
    List<String> nomorList = widget.nomorFinal.split('');

    return Scaffold(
      appBar: AppBar(
        title: Text('Andri Satia P/Page-4'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '${widget.nimFinal} / ${widget.nomorFinal}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
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
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemCount: nomorList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Color.fromRGBO(Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256), 1),
                  child: Center(
                    child: Text(nomorList[index]),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Previous Page'),
              onPressed: () {
                Navigator.pop(context, hal1101202016());
              },
            ),
          ],
        ),
      ),
    );
  }}
