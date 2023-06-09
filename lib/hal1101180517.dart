import 'dart:math';

import 'package:flutter/material.dart';

class hal1101180517 extends StatefulWidget {
  hal1101180517({Key? key}) : super(key: key);

  @override
  _hal1101180517State createState() => _hal1101180517State();
}

class _hal1101180517State extends State<hal1101180517> {
  TextEditingController _textEditingController = TextEditingController();
  String _output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Muhammad Hilmy'),
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
                  maxLength: 7,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.key),
                    hintText: 'Masukan 7 digit NIM Anda',
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            child: Text('Main menu'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {
                              Navigator.pop(
                                  context, _textEditingController.text);
                            },
                          )),
                      ElevatedButton(
                          child: const Text('Next Page'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(76, 175, 80, 1),
                          ),
                          onPressed: () async {
                            String nim = _textEditingController.text;
                            if (nim.length == 7) {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Halaman2(nim: nim)),
                              );
                              setState(() {
                                _output = result ?? '';
                              });
                            } else if (nim.length < 7) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: const Text('NIM harus 7 digit'),
                              ));
                            } else if (nim.length > 7) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: const Text(
                                    'NIM tidak boleh lebih dari 7!!!'),
                              ));
                            }
                          })
                    ],
                  ),
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
                    color: Color.fromRGBO(76, 175, 80, 1),
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

//Halaman ke 2
class Halaman2 extends StatefulWidget {
  final String nim;
  Halaman2({required this.nim});
  @override
  _Halaman2State createState() => _Halaman2State();
}

class _Halaman2State extends State<Halaman2> {
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
        backgroundColor: Colors.green,
        title: Text('Page 2'),
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
                icon: Icon(Icons.mail),
                labelText: 'Masukan Email anda',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                icon: Icon(Icons.numbers),
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
                icon: Icon(Icons.numbers),
                labelText: 'Masukan Digit ke 8 NIM Anda',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text('Go back to First Page'),
                onPressed: () {
                  Navigator.pop(context, _output);
                }),
            SizedBox(height: 16.0),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text('Next Page'),
                onPressed: () async {
                  String NIM1 = '${widget.nim}' + '${digitController.text}';
                  String phone1 = '${phoneController.text}';
                  final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Halaman3(
                          email: emailController.text,
                          hp: phoneController.text,
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
                    color: Color.fromRGBO(76, 175, 80, 1),
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

//Halaman ke 3
class Halaman3 extends StatefulWidget {
  final String email;
  final String hp;
  final String nim;

  Halaman3({required this.email, required this.hp, required this.nim});

  @override
  _Halaman3State createState() => _Halaman3State();
}

class _Halaman3State extends State<Halaman3> {
  TextEditingController digitController = TextEditingController();
  String nim1 = '';
  String _output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Page 3'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/images/hilmy.jpeg'),
                    radius: 70,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  '${widget.email}',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.0),
                Text(
                  '${widget.hp}',
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text('Previous Page'),
                  onPressed: () {
                    Navigator.pop(context, _output);
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text('Next Page'),
                  onPressed: () async {
                    String NIM1 = '${widget.nim}' + '${digitController.text}';
                    String HP1 = '${widget.hp}';
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Halaman4(
                          email: widget.email,
                          hp: HP1,
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
                  child: Text(
                    "NIM/No. Telp.",
                    textAlign: TextAlign.center,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    height: 70.0,
                    width: 390.0,
                    color: Color.fromARGB(75, 13, 156, 44),
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
        ],
      ),
    );
  }
}

//Halaman ke 4
class Halaman4 extends StatefulWidget {
  final String email;
  final String hp;
  final String nim;

  Halaman4({required this.email, required this.hp, required this.nim});

  @override
  _Halaman4State createState() => _Halaman4State();
}

class _Halaman4State extends State<Halaman4> {
  String _output = '';

  @override
  Widget build(BuildContext context) {
    List<String> nimList = widget.nim.split('');
    List<String> phoneList = widget.hp.split('');
    String pesan = '${widget.nim}/${widget.hp}';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Page 4'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '${widget.nim} / ${widget.hp}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
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
