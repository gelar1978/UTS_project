import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/1101194190/imageView1101194190.dart';
import 'package:flutter_application_1/controller/image_upload.dart';
// import 'package:flutter/widgets.dart';
// import 'center_widget.dart';

// import 'components/center_widget/center_widget.dart';
// import 'components/login_content.dart';

class hal1101194190old extends StatefulWidget {
  // final String message;
  hal1101194190old({super.key});

  @override
  State<hal1101194190old> createState() => _hal1101194190oldState();
}

class _hal1101194190oldState extends State<hal1101194190old> {
  final TextEditingController _textEditingController = TextEditingController();
  String _message = '';
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
                                Navigator.pop(
                                    context, _textEditingController.text);
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
              TextButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageUploads(),
                      ),
                    );
                  }),
                  child: Text("Upload Image")),
              TextButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(),
                      ),
                    );
                  }),
                  child: Text("View Image"))
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
  String _message = "";
  TextEditingController _textEditingController0 = TextEditingController();
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
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
                    icon: Icon(Icons.mail),
                    hintText: 'Ketikkan Alamat Email Anda'),
                //dewi.n.achdalina@gmail.com
              ),
              TextField(
                controller: _textEditingController1,
                decoration: const InputDecoration(
                    icon: Icon(Icons.call),
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
                          Navigator.pop(context, _message);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: const Text('Next Page'),
                        onPressed: () async {
                          if (_textEditingController2.text == 1.toString()) {
                            String NIM8 = '${widget.pesan1}' +
                                _textEditingController2.text;
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => hal1101194190_3(
                                    pesan1: NIM8,
                                    pesan2: _textEditingController0.text,
                                    pesan3: _textEditingController1.text),
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

class hal1101194190_3 extends StatefulWidget {
  // hal1101194190_3({super.key,required this.pesan1});
  String pesan1 = '';
  String pesan2 = '';
  String pesan3 = '';
  hal1101194190_3(
      {super.key,
      required this.pesan1,
      required this.pesan2,
      required this.pesan3});
  @override
  _hal1101194190_3State createState() => _hal1101194190_3State();
}

class _hal1101194190_3State extends State<hal1101194190_3> {
  String NIM910 = "";
  String notl = "";
  String _message = "";
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
              Text(
                '${widget.pesan2}',
                style: TextStyle(fontSize: 22),
              ),
              //dewi.n.achdalina@gmail.com
              Text(
                '${widget.pesan3}',
                style: TextStyle(fontSize: 22),
              ),
              //081224000057
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
                            Navigator.pop(context, _message);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          child: const Text('Next Page'),
                          onPressed: () async {
                            if (_textEditingController3.text == 90.toString()) {
                              String NIM910 = '${widget.pesan1}' +
                                  _textEditingController3.text;
                              String notl = '${widget.pesan3}';
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => hal1101194190_4(
                                    pesan1: NIM910,
                                    pesan2: notl,
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
          )
        ],
      ),
    );
  }
}

class hal1101194190_4 extends StatefulWidget {
  // hal1101194190_4({super.key,required this.pesan1});
  String pesan1 = '';
  String pesan2 = '';
  String pesan3 = '';
  hal1101194190_4(
      {super.key,
      required this.pesan1,
      required this.pesan2,
      required this.pesan3});
  @override
  _hal1101194190_4State createState() => _hal1101194190_4State();
}

class _hal1101194190_4State extends State<hal1101194190_4> {
  //
  @override
  Widget build(BuildContext context) {
    String allmessage = '${widget.pesan1}/${widget.pesan2}';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dewi Nurulaeni Achdalina/Page-4'),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    '${widget.pesan1} / ${widget.pesan2}',
                    style: TextStyle(fontSize: 22),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: const Text('Previous Page'),
                        onPressed: () {
                          Navigator.pop(context, allmessage);
                        },
                      ),
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
                    children: List.generate(allmessage.length, (index) {
                      return Container(
                        height: 1,
                        child: Card(
                          color: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                          child: Center(
                            child: Text(
                              allmessage[index],
                              style: TextStyle(
                                  color: Colors.black,
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
