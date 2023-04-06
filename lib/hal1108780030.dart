import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class hal1108780030 extends StatelessWidget {
  // final String message;
  hal1108780030({super.key});

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gelar Budiman'),
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
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          child: Text('Previous Page'),
                          onPressed: () {
                            Navigator.pop(context, _textEditingController.text);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          child: Text('Next Page'),
                          onPressed: () {
                            Navigator.pop(context, _textEditingController.text);
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
            child: Text("Sub-NIM from Next-Page"),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0), //or 15.0
            child: Container(
              height: 70.0,
              width: 170.0,
              color: Color(0xffFF0E58),
              child: Center(
                  child: Text(
                '19191919',
                style: TextStyle(fontSize: 28),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
