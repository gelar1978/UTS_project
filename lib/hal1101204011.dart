import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//This First Page
class hal1101204011 extends StatelessWidget {
  // final String message;
  hal1101204011({super.key});

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar Adhitia Pratama/Page-1'),
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
                        hintText: 'Enter the first 5 digits of your NIM',
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
                                  String nim = _textEditingController.text;
                                  if (nim == 11012.toString()) {
                                    final result = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SecondPage(
                                                nim_mahasiswa: nim,
                                              )),
                                    );
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: ((context) {
                                          return AlertDialog(
                                            title: Text('Eror !!!'),
                                            content: Text(
                                                'Oupss! That was WRONG!\nPlease type Correct:)'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
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
            ],
          ),
        ],
      ),
    );
  }
}

//This Second Page
class SecondPage extends StatefulWidget {
  final String nim_mahasiswa;
  SecondPage({required this.nim_mahasiswa});
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController emailmahasiswa = TextEditingController();
  TextEditingController phonemahasiswa = TextEditingController();
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
        title: Text('Fajar Adhitia Pratama/Page-2'),
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
                labelText: 'Enter your Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: phonemahasiswa,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Enter your Phone Number',
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
                labelText: 'Enter the 6th, 7th and 8th digit of your NIM',
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
                          Navigator.pop(context, hal1101204011());
                        }),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        child: Text('Next Page'),
                        onPressed: () {
                          String digit = digitnim.text;
                          if (digit == '040') {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThirdPage(
                                  emailFinal: emailmahasiswa.text,
                                  phoneFinal: phonemahasiswa.text,
                                  nimFinal:
                                      widget.nim_mahasiswa + digitnim.text,
                                ),
                              ),
                            );
                          } else {
                            showDialog(
                                context: context,
                                builder: ((context) {
                                  return AlertDialog(
                                    title: Text('Eror !!!'),
                                    content: Text(
                                        'Oupss! That was WRONG!\nPlease type Correct:)'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      )
                                    ],
                                  );
                                }));
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
  }
}

//This Third Page
class ThirdPage extends StatelessWidget {
  final String emailFinal;
  final String phoneFinal;
  final String nimFinal;

  ThirdPage(
      {required this.emailFinal,
      required this.phoneFinal,
      required this.nimFinal});
  TextEditingController digitNIM = TextEditingController();
  String nim1 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fajar Adhitia Pratama/Page-3'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CircleAvatar(
                radius: 100, // ukuran radius avatar
                backgroundImage:
                    AssetImage('lib/images/fajar.png'), // gambar dari assets
              ),
              Text(
                '$emailFinal',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              Text(
                '$phoneFinal',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: digitNIM,
                keyboardType: TextInputType.number,
                maxLength: 2,
                decoration: InputDecoration(
                  labelText: 'Enter the last 2 digits of your NIM',
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
                            Navigator.pop(context, hal1101204011());
                          }),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text('Next Page'),
                        onPressed: () {
                          String digit = digitNIM.text;
                          if (digit == '11') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FourthPage(
                                  emailFinal: emailFinal,
                                  phoneFinal: phoneFinal,
                                  nimFinal: nimFinal + digitNIM.text,
                                ),
                              ),
                            );
                          } else {
                            showDialog(
                                context: context,
                                builder: ((context) {
                                  return AlertDialog(
                                    title: Text('Eror !!!'),
                                    content: Text(
                                        'Oupss! That was WRONG!\nPlease type Correct:)'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
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
        ));
  }
}

//This Fourth Page
class FourthPage extends StatelessWidget {
  final String emailFinal;
  final String phoneFinal;
  final String nimFinal;

  FourthPage(
      {required this.emailFinal,
      required this.phoneFinal,
      required this.nimFinal});

  @override
  Widget build(BuildContext context) {
    List<String> nimList = nimFinal.split('');
    List<String> phoneList = phoneFinal.split('');

    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar Adhitia Pratama/Page-4'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '$nimFinal / $phoneFinal',
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
              child: Text('Previous Page'),
              onPressed: () {
                Navigator.pop(context, hal1101204011());
              },
            ),
          ],
        ),
      ),
    );
  }
}
