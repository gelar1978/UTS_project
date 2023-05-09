import 'package:flutter/material.dart';
import 'package:flutter_application_1/1108780030/hal1108780030.dart';
import 'package:flutter_application_1/1108780030/login1108780030.dart';

// void main() => runApp(const MyApp());

class reset1101202016 extends StatelessWidget {
  const reset1101202016({Key? key}) : super(key: key);

  static const String _title = 'FORGOT PASSWORD';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  String _message = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Gelar Budiman',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            CircleAvatar(
              radius: 80,
              child: Container(
                height: 170,
                width: 170,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/images/glb.jpg"),
                    fit: BoxFit.fitWidth,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Change Password',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirmed Password',
                ),
              ),
            ),
            // TextButton(
            //   onPressed: () {
            //     //forgot password screen
            //   },
            //   child: const Text(
            //     'Forgot Password',
            //   ),
            // ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Change'),
                  onPressed: () async {
                    // final result = await Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => hal1108780030old(),
                    //   ),
                    // );
                    // setState(() {
                    //   _message = result ?? '';
                    // });
                  },
                  // onPressed: () {
                  //   print(nameController.text);
                  //   print(passwordController.text);
                  // },
                )),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => hal1108780030new(),
                    //   ),
                    // );
                    // Navigator.pop(context);
                    //signin screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
