import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class hal1101190002 extends StatefulWidget {
  // final String message;
  hal1101190002({super.key});

  @override
  State<hal1101190002> createState() => _hal1101190002State();
}

class _hal1101190002State extends State<hal1101190002> {
  final TextEditingController _textEditingController = TextEditingController();
  String _message = '';
  String NIM = "1101190002/081387481480";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Arief Zulfikar Darmawan/Page-1'),
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
                        'https://upload.wikimedia.org/wikipedia/commons/0/03/Logo_Telkom_University_potrait.png'),
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
                        hintText: 'Ketikkan 7 digit pertama NIM anda',
                      ),
                    ),
                    // Text('$_message'),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              child: const Text('Main Page'),
                              onPressed: () {
                                Navigator.pop(context, NIM);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              child: const Text('Next Page'),
                              onPressed: () async {
                                if (_textEditingController.text ==
                                    1101194.toString()) {
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => hal1101190002_2(
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
              const SizedBox(
                height: 20,
                width: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("NIM/No. Telp."),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), //or 15.0
                child: Container(
                  height: 70.0,
                  width: 370.0,
                  color: const Color(0xffFF0E58),
                  child: Center(
                      child: Text(
                    _message,
                    style: const TextStyle(fontSize: 28),
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

class hal1101190002_2 extends StatefulWidget {
  // hal1108780030_2({super.key,required this.pesan1});
  String pesan1 = '';
  hal1101190002_2({super.key, required this.pesan1});
  @override
  _hal1101190002_2State createState() => _hal1101190002_2State();
}

class _hal1101190002_2State extends State<hal1101190002_2> {
  String NIM8 = "";
  TextEditingController _textEditingController0 = TextEditingController();
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  String NIM = "1101190002/081387481480";
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Arief Zulfikar Darmawan/Page-2'),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _textEditingController0,
                decoration: const InputDecoration(
                    icon: Icon(Icons.key),
                    hintText: 'Ketikkan Alamat Email Anda'),
                //ariefzulfikar22@gmail.com
              ),
              TextField(
                controller: _textEditingController1,
                decoration: const InputDecoration(
                    icon: Icon(Icons.key),
                    hintText: 'Ketikkan No Handphone Anda'),
                //081387481480
              ),
              TextField(
                controller: _textEditingController2,
                decoration: const InputDecoration(
                    icon: Icon(Icons.key),
                    hintText: 'Ketikkan digit ke-8 NIM anda'),
              ),
              // Text('$NIM8'),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: const Text('Previous Page'),
                        onPressed: () {
                          Navigator.pop(context, NIM);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: const Text('Next Page'),
                        onPressed: () async {
                          if (_textEditingController2.text == 1.toString()) {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => hal1101190002_3(
                                    pesan1: _textEditingController2.text),
                              ),
                            );
                            setState(() {
                              NIM8 = result ?? '';
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("NIM/No. Telp."),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), //or 15.0
                child: Container(
                  height: 70.0,
                  width: 370.0,
                  color: const Color(0xffFF0E58),
                  child: Center(
                      child: Text(
                    NIM8,
                    style: const TextStyle(fontSize: 28),
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

class hal1101190002_3 extends StatefulWidget {
  // hal1101190002_3({super.key,required this.pesan1});
  String pesan1 = '';
  hal1101190002_3({super.key, required this.pesan1});
  @override
  _hal1101190002_3State createState() => _hal1101190002_3State();
}

class _hal1101190002_3State extends State<hal1101190002_3> {
  String NIM910 = "";
  final String Email = "ariefzulfikar22@gmail.com";
  final String Nohp = "081387481480";
  String NIM = "1101190002/081387481480";
  TextEditingController _textEditingController3 = TextEditingController();

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Arief Zulfikar Darmawan/Page-3'),
      ),
      body: ListView(
        children: [
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('lib/images/arief.jpg'),
              // backgroundColor: Colors.transparent,
              radius: 100,
            ),
          ),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('$Email'),
              Text('$Nohp'),
            ]),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _textEditingController3,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.key),
                      hintText: 'Ketikkan digit ke-9 dan ke-10 NIM anda'),
                ),
                // Text('$NIM910'),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          child: const Text('Previous Page'),
                          onPressed: () {
                            Navigator.pop(context, NIM);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          child: const Text('Next Page'),
                          onPressed: () async {
                            if (_textEditingController3.text == 02.toString()) {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => hal1101190002_4(
                                      pesan1: _textEditingController3.text),
                                ),
                              );
                              setState(() {
                                NIM910 = result ?? '';
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("NIM/No. Telp."),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), //or 15.0
                  child: Container(
                    height: 70.0,
                    width: 370.0,
                    color: const Color(0xffFF0E58),
                    child: Center(
                        child: Text(
                      NIM910,
                      style: const TextStyle(fontSize: 28),
                    )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class hal1101190002_4 extends StatefulWidget {
  // hal1101194190_4({super.key,required this.pesan1});
  String pesan1 = '';
  hal1101190002_4({super.key, required this.pesan1});
  @override
  _hal1101190002_4State createState() => _hal1101190002_4State();
}

class _hal1101190002_4State extends State<hal1101190002_4> {
  String NIM = "1101190002/081387481480";

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Arief Zulfikar Darmawan/Page-4'),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(NIM),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text('Previous Page'),
                onPressed: () {
                  Navigator.pop(context, NIM);
                },
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tombol_kalk("1", 30),
              tombol_kalk("1", 30),
              tombol_kalk("0", 30),
              tombol_kalk("1", 30),
              tombol_kalk("1", 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tombol_kalk("9", 30),
              tombol_kalk("0", 30),
              tombol_kalk("0", 30),
              tombol_kalk("0", 30),
              tombol_kalk("2", 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tombol_kalk("/", 30),
              tombol_kalk("0", 30),
              tombol_kalk("8", 30),
              tombol_kalk("1", 30),
              tombol_kalk("3", 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tombol_kalk("8", 30),
              tombol_kalk("7", 30),
              tombol_kalk("4", 30),
              tombol_kalk("8", 30),
              tombol_kalk("1", 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tombol_kalk("4", 30),
              tombol_kalk("8", 30),
              tombol_kalk("0", 30),
            ],
          ),
        ],
      ),
    );
  }

  Widget tombol_kalk(String x, double z) {
    return Card(
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Text(
            x,
            style: TextStyle(fontSize: z),
          ),
        ),
      ),
    );
  }
}

class hasil {
  String nama = "Muhammad Arief Zulfikar Darmawan";
  String email = "ariefzulfikar22@gmail.com";
  String nohp = "081387481480";
  String nim = "1101190002";

  hasil(this.nama, this.email, this.nohp, this.nim);
}
