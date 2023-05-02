import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class hal1101204011 extends StatefulWidget {
  const hal1101204011({Key? key}) : super(key: key);

  @override
  _hal1101204011State createState() => _hal1101204011State();
}

class _hal1101204011State extends State<hal1101204011> {
  TextEditingController _textEditingController = TextEditingController();
  String _output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fajar Adhitia Pratama'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              // color: Colors.red.withOpacity(0.1),
              image: DecorationImage(
                image: NetworkImage(
                  'https://anaktelkom.com/wp-content/uploads/2021/08/Logo-Telkom-University-900x1024.png',
                ),
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
                  decoration: const InputDecoration(
                    icon: Icon(Icons.key),
                    hintText: 'Masukkan 7 digit pertama NIM anda',
                  ),
                ),
                Column(
                  children: [
                    ElevatedButton(
                      child: const Text('Main Page'),
                      onPressed: () {
                        Navigator.pop(context, _textEditingController.text);
                      },
                    ),
                    ElevatedButton(
                        child: const Text('Next Page'),
                        onPressed: () async {
                          String nim = _textEditingController.text;
                          if (nim.length == 7) {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage(nim: nim)),
                            );
                            setState(() {
                              _output = result ?? '';
                            });
                          } else if (nim.length < 7) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: const Text(
                                  'NIM harus terdiri dari 7 digit!!!'),
                            ));
                          } else if (nim.length > 7) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  const Text('NIM tidak boleh lebih dari 7!!!'),
                            ));
                          }
                        })
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("NIM/No. Telp."),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), //or 15.0
                  child: Container(
                    height: 70.0,
                    width: 390.0,
                    color: const Color(0xffFF0E58),
                    child: Center(
                        child: Text(
                      _output,
                      style: const TextStyle(fontSize: 28),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//PAGE KE 2
class SecondPage extends StatefulWidget {
  final String nim;
  SecondPage({required this.nim});
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController digitController = TextEditingController();
  String nim = '';
  String _output = '';

  @override
  void initState() {
    super.initState();
    nim = widget.nim;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar Adhitia Pratama/Page 2'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Masukan Email anda',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Masukan Nomor HP Anda',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: digitController,
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Masukan Digit ke 8 NIM Anda',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                child: Text('Go back'),
                onPressed: () {
                  Navigator.pop(context, _output);
                }),
            SizedBox(height: 16.0),
            ElevatedButton(
                child: Text('Next Page'),
                onPressed: () async {
                  String NIM1 = '${widget.nim}' + '${digitController.text}';
                  String phone1 = '${phoneController.text}';
                  final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdPage(
                          email: emailController.text,
                          phone: phoneController.text,
                          nim: widget.nim + digitController.text,
                        ),
                      ));
                  setState(() {
                    _output = result ?? '';
                  });
                }),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("NIM/No. Telp."),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), //or 15.0
                  child: Container(
                    height: 70.0,
                    width: 390.0,
                    color: const Color(0xffFF0E58),
                    child: Center(
                        child: Text(
                      '$_output',
                      style: const TextStyle(fontSize: 28),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//PAGE KE 3
class ThirdPage extends StatefulWidget {
  final String email;
  final String phone;
  final String nim;

  ThirdPage({required this.email, required this.phone, required this.nim});

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController digitController = TextEditingController();
  String nim1 = '';
  String _output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar Adhitia Pratama/Page 3'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
              radius: 90, // ukuran radius avatar
              backgroundImage:
                  AssetImage('lib/images/fajar.png'), // gambar dari assets
            ),
            Text(
              '${widget.email}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text(
              '${widget.phone}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: digitController,
              keyboardType: TextInputType.number,
              maxLength: 2,
              decoration: InputDecoration(
                labelText: 'Masukan Digit ke 9 dan 10 NIM Anda',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              child: Text('Previous Page'),
              onPressed: () {
                Navigator.pop(context, _output);
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Next Page'),
              onPressed: () async {
                String NIM1 = '${widget.nim}' + '${digitController.text}';
                String HP1 = '${widget.phone}';
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FourthPage(
                      email: widget.email,
                      phone: HP1,
                      nim: NIM1,
                    ),
                  ),
                );
                setState(() {
                  _output = result ?? '';
                });
              },
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
                color: Color.fromARGB(0, 7, 252, 117),
                child: Center(
                    child: Text(
                  _output,
                  style: TextStyle(fontSize: 28),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//PAGE KE 4
class FourthPage extends StatefulWidget {
  final String email;
  final String phone;
  final String nim;

  FourthPage({required this.email, required this.phone, required this.nim});

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  String _output = '';

  @override
  Widget build(BuildContext context) {
    List<String> nimList = widget.nim.split('');
    List<String> phoneList = widget.phone.split('');
    String pesan = '${widget.nim}/${widget.phone}';

    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar Adhitia Pratama/Page 4'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '${widget.nim} / ${widget.phone}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              child: Text('Previous Page'),
              onPressed: () {
                Navigator.pop(context, pesan);
              },
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
          ],
        ),
      ),
    );
  }
}
