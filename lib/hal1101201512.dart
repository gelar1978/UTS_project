import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class hal1101201512 extends StatelessWidget {
  // final String message;
  hal1101201512({super.key});

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aryandhika Ibnu Raihan'),
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
                      onPressed: () async {
                        String nim = _textEditingController.text;
                        if (nim.length== 5){
                          final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(nim: nim,)
                    ),
                    );
                    }
                    else if (nim.length < 5) {
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                      content: Text('NIM harus terdiri dari 5 digit!!!'),
                      )
                      );
                    }
                    else if (nim.length > 5){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('NIM tidak boleh lebih dari 5!!!') ),
                      );
                    }
                    }
                    )
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

  @override
  void initState(){
    super.initState();
    nim = widget.nim;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aryandhika Ibnu Raihan (Page 2)'),
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
              maxLength: 3,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Masukan 3 Digit NIM anda',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                      child: Text('Go back to First Page'),
                      onPressed: () {
                        Navigator.pop(context, hal1101201512());
                      }
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Next Page'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(
                      email: emailController.text,
                      phone: phoneController.text,
                      nim: widget.nim +digitController.text,
                    ),
                  ),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}

//PAGE KE 3
class ThirdPage extends StatelessWidget {
  final String email;
  final String phone;
  final String nim;
  

  ThirdPage({required this.email, required this.phone, required this.nim});
  TextEditingController digitController = TextEditingController();
  String nim1 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aryandhika Ibnu Raihan (Page 3)'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
            radius: 100, // ukuran radius avatar
           backgroundImage: AssetImage('lib/image/aar.jpg'), // gambar dari assets
            ),
            Text(
              '$email',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),  
            SizedBox(height: 16.0),
            Text(
              '$phone',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: digitController,
              keyboardType: TextInputType.number,
              maxLength: 2,
              decoration: InputDecoration(
                labelText: 'Masukan 2 Digit Terakhir NIM anda',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                      child: Text('Previous Page'),
                      onPressed: () {
                        Navigator.pop(context , hal1101201512());
                      }
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Next Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FourthPage(
                      email: email,
                      phone: phone,
                      nim: nim + digitController.text,
                    ),
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

//PAGE KE 4
class FourthPage extends StatelessWidget {
  final String email;
  final String phone;
  final String nim;

  FourthPage({required this.email, required this.phone, required this.nim});

  @override
  Widget build(BuildContext context) {
    List<String> nimList = nim.split('');
    List<String> phoneList = phone.split('');

    return Scaffold(
      appBar: AppBar(
        title: Text('Aryandhika Ibnu Raihan (Page 4)'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '$nim / $phone',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemCount: nimList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),
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
                  color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),
                  child: Center(
                    child: Text(phoneList[index]),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Previous Page'),
              onPressed: () {
                Navigator.pop(context, hal1101201512());
              },
            ),
          ],
        ),
      ),
    );
  }
}