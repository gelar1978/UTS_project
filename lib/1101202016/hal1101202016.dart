import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class hal1101202016 extends StatefulWidget {
  hal1101202016({super.key});

  @override
  State<hal1101202016> createState() => _hal1101202016State();
}

class _hal1101202016State extends State<hal1101202016> {
  TextEditingController _textEditingController = TextEditingController();

  String _message = '';

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
                                                message2: _textEditingController.text,
                                              )
                                              ),
                                    );
                                    setState((){
                                      _message = result ?? '';
                                    }
                                    );
                                    } 
                                }
                                ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
                width: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("NIM/No. Telp."),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), //or 15.0
                child: Container(
                  height: 60.0,
                  width: 360.0,
                  color: Color.fromARGB(255, 51, 106, 233),
                  child: Center(
                      child: Text(
                    _message,
                    style: TextStyle(fontSize: 26),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }}

class Page2 extends StatefulWidget {
  // final String nim_mahasiswa;
  //Page2({required this.nim_mahasiswa});
  String message2 = '';
  Page2({super.key, required this.message2});
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  TextEditingController emailmahasiswa = TextEditingController();
  TextEditingController nomormahasiswa = TextEditingController();
  TextEditingController digitnim = TextEditingController();
  String nim = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Andri Satia P/Page-2'),
      ),
      body: ListView(
        children: [
        Column(
          children: [
            Center(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 16,),
            TextField(
              controller: emailmahasiswa,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Ketikkan Alamat Email Anda',
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: nomormahasiswa,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Ketikkan No Handphone Anda',
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: digitnim,
              keyboardType: TextInputType.number,
              maxLength: 3,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Masukkan digit ke-8 NIM Anda',
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
                          Navigator.pop(context, nim);
                        }
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        child: Text('Next Page'),
                        onPressed: () async{
                          String digit = digitnim.text;
                          if (digit == 0.toString()) {
                            final result = await Navigator.push(
                            // Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Page3(
                                  emailFinal: emailmahasiswa.text,
                                  nomorFinal: nomormahasiswa.text,
                                  nimFinal:11012020.toString()
                                ),
                              ),
                            );
                            setState(() {
                              nim = result ?? '';
                            });
                          } 
                        }),
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
                  height: 60.0,
                  width: 360.0,
                  color: Color.fromARGB(255, 51, 106, 233),
                  child: Center(
                      child: Text(
                    nim,
                    style: TextStyle(fontSize: 26),
                  )),
                ),
              ),
          ],
        ),
          ],

        ),
      );
  }}

class Page3 extends StatefulWidget {
  final String emailFinal;
  final String nomorFinal;
  final String nimFinal;

  Page3(
      {super.key, required this.emailFinal,
      required this.nomorFinal,
      required this.nimFinal});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  TextEditingController digitNIM = TextEditingController();
  String nim = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Andri Satia P/Page-3'),
        ),
        body: ListView(
          children: [
            Column(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                radius: 100,
                backgroundImage:
                    AssetImage('lib/images/andri.jpg'), 
              ),
              SizedBox(height: 12),
              Text(
                '${widget.emailFinal}',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
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
                            Navigator.pop(context, nim);
                          },
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text('Next Page'),
                        onPressed: () async {
                          String digit = digitNIM.text;
                          if (digit == 16.toString()) {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Page4(
                                  nomorFinal: widget.nomorFinal,
                                  nimFinal: widget.nimFinal + digitNIM.text,
                                ),
                              ),
                            );
                            setState(() {
                              nim = result ?? '';
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
                  height: 60.0,
                  width: 360.0,
                  color: Color.fromARGB(255, 51, 106, 233),
                  child: Center(
                      child: Text(
                    nim,
                    style: TextStyle(fontSize: 26),
                  )),
                ),
              ),
            ],
          ),
        ],)
        );
  }
  }

class Page4 extends StatefulWidget {
  String nomorFinal;
  String nimFinal;

  Page4(
      {super.key, required this.nomorFinal,
      required this.nimFinal});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    List<String> nimList = widget.nimFinal.split('');
    List<String> nomorList = widget.nomorFinal.split('');
    List<String> merge=[];
    merge.addAll(nimList);
    merge.addAll(nomorList);

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
                Navigator.pop(context, widget.nimFinal + " / " + widget.nomorFinal);
              },
            ),
          ],
        ),
      ),
    );
  }}
