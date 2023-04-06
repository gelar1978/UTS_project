import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class hal1101204011 extends StatelessWidget {
  // final String message;
  hal1101204011({super.key});

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar adhitia pratama'),
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
                    hintText: 'Masukkan 5 digit pertama NIM anda',
                  ),
                ),
                // Text('$message'),
                Row(
                  children: [
                    ElevatedButton(
                      child: Text('Go back to First Page'),
                      onPressed: () {
                        Navigator.pop(context, _textEditingController.text);
                      },
                    ),
                    ElevatedButton(
                      child: Text('Next Page'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(message: _textEditingController.text)));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  final String message;
  SecondPage({required this.message});
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _textEditingController = TextEditingController();
  String _message2 = '';
  @override
  void initState(){
    super.initState();
    _message2 = widget.message;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar adhitia pratama | Page 0'),
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
                    hintText: 'Masukkan NIM anda',
                  ),
                ),
                // Text('$message'),
                Row(
                  children: [
                    ElevatedButton(
                      child: Text('Go back'),
                      onPressed: () {
                        Navigator.pop(context, _textEditingController.text);
                      },
                    ),
                    ElevatedButton(
                      child: Text('Next Page'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage(message: _textEditingController.text)));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  final String message;
  ThirdPage({required this.message});
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController _textEditingController = TextEditingController();
  String _message2 = '';
  @override
  void initState(){
    super.initState();
    _message2 = widget.message;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar adhitia pratama | Page 4'),
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
                    hintText: 'Masukkan NIM anda',
                  ),
                ),
                // Text('$message'),
                Row(
                  children: [
                    ElevatedButton(
                      child: Text('Go back'),
                      onPressed: () {
                        Navigator.pop(context, _textEditingController.text);
                      },
                    ),
                    ElevatedButton(
                      child: Text('Next Page'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FourthPage(message: _textEditingController.text)));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FourthPage extends StatefulWidget {
  final String message;
  FourthPage({required this.message});
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  TextEditingController _textEditingController = TextEditingController();
  String _message2 = '';
  @override
  void initState(){
    super.initState();
    _message2 = widget.message;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar adhitia pratama | Page 0'),
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
                    hintText: 'Masukkan NIM anda',
                  ),
                ),
                // Text('$message'),
                Row(
                  children: [
                    ElevatedButton(
                      child: Text('Go back'),
                      onPressed: () {
                        Navigator.pop(context, _textEditingController.text);
                      },
                    ),
                    ElevatedButton(
                      child: Text('Next Page'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FifthPage(message: _textEditingController.text)));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FifthPage extends StatefulWidget {
  final String message;
  FifthPage({required this.message});
  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  TextEditingController _textEditingController = TextEditingController();
  String _message2 = '';
  @override
  void initState(){
    super.initState();
    _message2 = widget.message;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar adhitia pratama | Page 1'),
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
                    hintText: 'Masukkan NIM anda',
                  ),
                ),
                // Text('$message'),
                Row(
                  children: [
                    ElevatedButton(
                      child: Text('Go back'),
                      onPressed: () {
                        Navigator.pop(context, _textEditingController.text);
                      },
                    ),
                    ElevatedButton(
                      child: Text('Next Page'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SixthPage(message: _textEditingController.text)));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SixthPage extends StatefulWidget {
  final String message;
  SixthPage({required this.message});
  @override
  _SixthPageState createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  TextEditingController _textEditingController = TextEditingController();
  String _message2 = '';
  @override
  void initState(){
    super.initState();
    _message2 = widget.message;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar adhitia pratama | Page 1'),
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
                    hintText: 'Masukkan NIM anda',
                  ),
                ),
                // Text('$message'),
                Row(
                  children: [
                    ElevatedButton(
                      child: Text('Go back'),
                      onPressed: () {
                        Navigator.pop(context, _textEditingController.text);
                      },
                    ),
                    ElevatedButton(
                      child: Text('Next Page'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(message: _textEditingController.text)));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeventhPage extends StatefulWidget {
  final String message;
  SeventhPage({required this.message});
  @override
  _SeventhPageState createState() => _SeventhPageState();
}

class _SeventhPageState extends State<SeventhPage> {
  TextEditingController _textEditingController = TextEditingController();
  String _message2 = '';
  @override
  void initState(){
    super.initState();
    _message2 = widget.message;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fajar adhitia pratama | Page 0'),
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
                    hintText: 'Masukkan NIM anda',
                  ),
                ),
                // Text('$message'),
                Row(
                  children: [
                    ElevatedButton(
                      child: Text('Go back'),
                      onPressed: () {
                        Navigator.pop(context, _textEditingController.text);
                      },
                    ),
                    ElevatedButton(
                      child: Text('Next Page'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(message: _textEditingController.text)));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}