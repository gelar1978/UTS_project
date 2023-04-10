import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class hal1101204132 extends StatefulWidget {
  // final String message;
  hal1101204132({super.key});

  @override
  State<hal1101204132> createState() => _hal1101204132State();
}

class _hal1101204132State extends State<hal1101204132> {
  final TextEditingController _textEditingController = TextEditingController();
  String _message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[100],
        title: const Text('Sabila Hayyinun Jannah/Page-1'),
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
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent[100])),
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
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent[100])),
                              child: Text('Next Page'),
                              onPressed: () async {
                                if (_textEditingController.text ==
                                    1101204.toString()) {
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => hal1101204132_2(
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
                  width: 370.0,
                  color: Color(0xffFF0E58),
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

class hal1101204132_2 extends StatefulWidget {
  // hal1101204132_2({super.key,required this.pesan1});
  String pesan1 = '';
  hal1101204132_2({super.key, required this.pesan1});
  @override
  _hal1101204132_2State createState() => _hal1101204132_2State();
}

class _hal1101204132_2State extends State<hal1101204132_2> {
  String NIM7 = "";
  TextEditingController _textEditingController0 = TextEditingController();
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[100],
        title: const Text('Sabila Hayyinun Jannah/Page-2'),
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
                      controller: _textEditingController0,
                      decoration: InputDecoration(
                        icon: Icon(Icons.mail_outline),
                        hintText: 'Ketikkan Alamat Email Anda',
                        // border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16,),
                    TextField(
                      controller: _textEditingController1,
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone_android),
                        hintText: 'Ketikkan No Handphone Anda',
                      ),
                    ),
                    SizedBox(height: 16,),
                    TextField(
                      controller: _textEditingController2,
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
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent[100])),
                              child: Text('Previous Page'),
                              onPressed: () {
                                Navigator.pop(
                                    context, NIM7);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent[100])),
                              child: Text('Next Page'),
                              onPressed: () async {
                                if (_textEditingController2.text ==
                                    1.toString()) {
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => hal1101204132_3(
                                          email: _textEditingController0.text,
                                          notel: _textEditingController1.text,
                                          NIM: 11012041.toString()),
                                    ),
                                  );
                                  setState(() {
                                    NIM7 = result ?? '';
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
                  width: 370.0,
                  color: Color(0xffFF0E58),
                  child: Center(
                      child: Text(
                    NIM7,
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
class hal1101204132_3 extends StatefulWidget {
  String email, notel, NIM;
  hal1101204132_3({super.key, required this.email, required this.notel, required this.NIM});

  @override
  State<hal1101204132_3> createState() => _hal1101204132_3State();
}

class _hal1101204132_3State extends State<hal1101204132_3> {
  String NIM7 = ' ';
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[100],
        title: const Text('Sabila Hayyinun Jannah/Page-3'),
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
                      radius: 80,
                      backgroundImage: NetworkImage('https://cdndata.telkomuniversity.ac.id/pmb/2021/PAS_FOTO/11481182620_PAS_FOTO_1.jpg'),
                    ),
                    SizedBox(height: 16),
                    Text('${widget.email}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text('${widget.notel}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        hintText: 'Masukkan digit ke-9 dan 10 NIM Anda',
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
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent[100])),
                              child: Text('Previous Page'),
                              onPressed: () {
                                Navigator.pop(
                                    context, NIM7);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent[100])),
                              child: Text('Next Page'),
                              onPressed: () async {
                                if (_textEditingController.text ==
                                    32.toString()) {
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => hal1101204132_4(
                                        nim: 1101204132.toString(),
                                        tel: widget.notel,
                                      ),
                                    ),
                                  );
                                  setState(() {
                                    NIM7 = result ?? '';
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
                  width: 370.0,
                  color: Color(0xffFF0E58),
                  child: Center(
                      child: Text(
                    NIM7,
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
class hal1101204132_4 extends StatefulWidget {
  String nim, tel;
  hal1101204132_4({super.key, required this.nim, required this.tel});

  @override
  State<hal1101204132_4> createState() => _hal1101204132_4State();
}

class _hal1101204132_4State extends State<hal1101204132_4> {
  @override
  Widget build(BuildContext context) {
    String tampil = widget.nim + "/" + widget.tel;
    List<String> ListNim = widget.nim.split('');
    List<String> ListTel = widget.tel.split('');
    List<String> tanda = ['/'];
    List<String> semua = [];
    semua.addAll(ListNim);
    semua.addAll(tanda);
    semua.addAll(ListTel);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[100],
        title: const Text('Sabila Hayyinun Jannah/Page-4'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),
                    Text('${widget.nim}/${widget.tel}',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent[100])),
                              child: Text('Previous Page'),
                              onPressed: () {
                                Navigator.pop(
                                    context, tampil);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
                      itemCount: semua.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                          child: Padding(padding: EdgeInsets.all(10),
                            child: Center(
                            child: Text(semua[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        );
                      },
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