import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class hal1101194190 extends StatefulWidget {
  // final String message;
  hal1101194190({super.key});

  @override
  State<hal1101194190> createState() => _hal1101194190State();
}

class _hal1101194190State extends State<hal1101194190> {
  final TextEditingController _textEditingController = TextEditingController();
  String _message = '';
  String NIM = "1101194190/081224000057";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dewi Nurulaeni Achdalina/Page-1'),
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
                                      builder: (context) => hal1101194190_2(
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

class hal1101194190_2 extends StatefulWidget {
  // hal1108780030_2({super.key,required this.pesan1});
  String pesan1 = '';
  hal1101194190_2({super.key, required this.pesan1});
  @override
  _hal1101194190_2State createState() => _hal1101194190_2State();
}

class _hal1101194190_2State extends State<hal1101194190_2> {
  String NIM8 = "";
  TextEditingController _textEditingController0 = TextEditingController();
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  String NIM = "1101194190/081224000057";
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dewi Nurulaeni Achdalina/Page-2'),
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
                //dewi.n.achdalina@gmail.com
              ),
              TextField(
                controller: _textEditingController1,
                decoration: const InputDecoration(
                    icon: Icon(Icons.key),
                    hintText: 'Ketikkan No Handphone Anda'),
                //081224000057
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
                                builder: (context) => hal1101194190_3(
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

class hal1101194190_3 extends StatefulWidget {
  // hal1101194190_3({super.key,required this.pesan1});
  String pesan1 = '';
  hal1101194190_3({super.key, required this.pesan1});
  @override
  _hal1101194190_3State createState() => _hal1101194190_3State();
}

class _hal1101194190_3State extends State<hal1101194190_3> {
  String NIM910 = "";
  final String Email = "dewi.n.achdalina@gmail.com";
  final String Nohp = "081224000057";
  String NIM = "1101194190/081224000057";
  TextEditingController _textEditingController3 = TextEditingController();

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dewi Nurulaeni Achdalina/Page-3'),
      ),
      body: ListView(
        children: [
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('lib/images/DewiNA.jpg'),
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
                            if (_textEditingController3.text == 90.toString()) {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => hal1101194190_4(
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

class hal1101194190_4 extends StatefulWidget {
  // hal1101194190_4({super.key,required this.pesan1});
  String pesan1 = '';
  hal1101194190_4({super.key, required this.pesan1});
  @override
  _hal1101194190_4State createState() => _hal1101194190_4State();
}

class _hal1101194190_4State extends State<hal1101194190_4> {
  String NIM = "1101194190/081224000057";

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dewi Nurulaeni Achdalina/Page-4'),
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
              tombol_kalk("4", 30),
              tombol_kalk("1", 30),
              tombol_kalk("9", 30),
              tombol_kalk("0", 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tombol_kalk("/", 30),
              tombol_kalk("0", 30),
              tombol_kalk("8", 30),
              tombol_kalk("1", 30),
              tombol_kalk("2", 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tombol_kalk("2", 30),
              tombol_kalk("4", 30),
              tombol_kalk("0", 30),
              tombol_kalk("0", 30),
              tombol_kalk("0", 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tombol_kalk("0", 30),
              tombol_kalk("5", 30),
              tombol_kalk("7", 30),
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
  String nama = "Dewi Nurulaeni Achdalina";
  String email = "dewi.n.achdalina@gmail.com";
  String nohp = "081224000057";
  String nim = "1101194190";

  hasil(this.nama, this.email, this.nohp, this.nim);
}
