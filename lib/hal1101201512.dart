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
                      onPressed: () {
                        Navigator.pop(context, _textEditingController.text);
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
