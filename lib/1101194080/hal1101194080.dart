import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const hal1101194080old());
}

class hal1101194080old extends StatelessWidget {
  const hal1101194080old({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: SizedBox(
              height: 60,
              child: TextButton(
                onPressed: () {
                  if (_controller.text == "11011") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SecondScreen(nim: _controller.text);
                        },
                      ),
                    );
                  } else {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content:
                            const Text('Please fill with the correct value!'),
                        action: SnackBarAction(
                            label: 'UNDO',
                            onPressed: scaffold.hideCurrentSnackBar),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                ),
                child: const Text(
                  'Lanjut',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  String nim;

  SecondScreen({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: SizedBox(
              height: 60,
              child: TextButton(
                onPressed: () {
                  if (_controller.text == "9") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ThirdScreen(nim: nim + _controller.text);
                        },
                      ),
                    );
                  } else {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content:
                            const Text('Please fill with the correct value!'),
                        action: SnackBarAction(
                            label: 'UNDO',
                            onPressed: scaffold.hideCurrentSnackBar),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                ),
                child: const Text(
                  'Lanjut',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  String nim;

  ThirdScreen({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: SizedBox(
              height: 60,
              child: TextButton(
                onPressed: () {
                  if (_controller.text == "4") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FourthScreen(nim: nim + _controller.text);
                        },
                      ),
                    );
                  } else {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content:
                            const Text('Please fill with the correct value!'),
                        action: SnackBarAction(
                            label: 'UNDO',
                            onPressed: scaffold.hideCurrentSnackBar),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                ),
                child: const Text(
                  'Lanjut',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FourthScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  String nim;

  FourthScreen({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: SizedBox(
              height: 60,
              child: TextButton(
                onPressed: () {
                  if (_controller.text == "0") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FifthScreen(nim: nim + _controller.text);
                        },
                      ),
                    );
                  } else {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content:
                            const Text('Please fill with the correct value!'),
                        action: SnackBarAction(
                            label: 'UNDO',
                            onPressed: scaffold.hideCurrentSnackBar),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                ),
                child: const Text(
                  'Lanjut',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FifthScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  String nim;

  FifthScreen({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fifth Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: SizedBox(
              height: 60,
              child: TextButton(
                onPressed: () {
                  if (_controller.text == "8") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SixthScreen(nim: nim + _controller.text);
                        },
                      ),
                    );
                  } else {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content:
                            const Text('Please fill with the correct value!'),
                        action: SnackBarAction(
                            label: 'UNDO',
                            onPressed: scaffold.hideCurrentSnackBar),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                ),
                child: const Text(
                  'Lanjut',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SixthScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  String nim;

  SixthScreen({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sixth Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: SizedBox(
              height: 60,
              child: TextButton(
                onPressed: () {
                  if (_controller.text == "0") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SeventhScreen(nim: nim + _controller.text);
                        },
                      ),
                    );
                  } else {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content:
                            const Text('Please fill with the correct value!'),
                        action: SnackBarAction(
                            label: 'UNDO',
                            onPressed: scaffold.hideCurrentSnackBar),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                ),
                child: const Text(
                  'Lanjut',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeventhScreen extends StatelessWidget {
  String nim;

  SeventhScreen({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GLB(),
    );
  }
}

class GLB extends StatefulWidget {
  // const GLB({super.key});

  @override
  State<GLB> createState() => _GLBState();
}

class _GLBState extends State<GLB> {
  final List alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 198, 120),
        title: Text("Dhean Ardani R/1101194080"),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Column(
            children: [
              Container(
                height: 50,
                width: 500,
                color: Colors.white,
                // child: Text(""),
              ),
              Image(
                  image: ResizeImage(
                AssetImage("lib/images/dhean.png"),
                width: 210,
                height: 280,
              )),
              Container(
                height: 50,
                width: 500,
                color: Colors.white,
                // child: Text(""),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 260,
                    child: kartu("23 Januari 2001"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 130,
                    child: kartu("LAKIK"),
                  ),
                  SizedBox(
                    height: 70,
                    width: 130,
                    child: kartu("175 cm"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 85,
                width: 400,
                child: Card(
                  color: Colors.grey,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Hitung Utang Kalian",
                      style: TextStyle(fontSize: 28),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tombol_kalk("C", Colors.pink),
                  tombol_kalk("→", Colors.pink),
                  tombol_kalk("%", Colors.pink),
                  tombol_kalk("÷", Colors.pink),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tombol_kalk("1", Colors.lime),
                  tombol_kalk("1", Colors.lime),
                  tombol_kalk("0", Colors.lime),
                  tombol_kalk("×", Colors.pink),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tombol_kalk("1", Colors.lime),
                  tombol_kalk("1", Colors.lime),
                  tombol_kalk("9", Colors.lime),
                  tombol_kalk("-", Colors.pink),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tombol_kalk("4", Colors.lime),
                  tombol_kalk("0", Colors.lime),
                  tombol_kalk("8", Colors.lime),
                  tombol_kalk("+", Colors.pink),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tombol_kalk("?", Colors.lime),
                  tombol_kalk("0", Colors.lime),
                  tombol_kalk(".", Colors.lime),
                  tombol_kalk("=", Colors.pink),
                ],
              ),
            ],
          ),
          GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(0),
            children: List.generate(alphabet.length, (index) {
              return Container(
                height: 5,
                child: Card(
                  child: Column(
                    children: [],
                  ),
                ),
              );
            }),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.pinkAccent,
            icon: Icon(Icons.contacts),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(Icons.numbers),
            label: 'Calculator NIM',
          ),
        ],
      ),
    );
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget tombol_kalk(String x, MaterialColor y) {
    return SizedBox(
      height: 95,
      width: 95,
      child: Card(
        color: y,
        //color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(x,
                  style: TextStyle(
                    fontSize: 30,
                  )),
            )),
      ),
    );
  }

  Widget kartu(String a) {
    return Card(
      color: Colors.pink,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Text(
            a,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
